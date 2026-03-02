SplitSecondStopwatch = require './split-second-stopwatch'

describe 'SplitSecondStopwatch', ->
  it 'new stopwatch starts in ready state', ->
    stopwatch = new SplitSecondStopwatch
    expect(stopwatch.state()).toEqual 'ready'

  xit "new stopwatch's current lap has no elapsed time", ->
    stopwatch = new SplitSecondStopwatch
    expect(stopwatch.currentLap()).toEqual '00:00:00'

  xit "new stopwatch's total has no elapsed time", ->
    stopwatch = new SplitSecondStopwatch
    expect(stopwatch.total()).toEqual '00:00:00'

  xit 'new stopwatch does not have previous laps', ->
    stopwatch = new SplitSecondStopwatch
    expect(stopwatch.previousLaps()).toEqual []

  xit 'start from ready state changes state to running', ->
    stopwatch = new SplitSecondStopwatch
    stopwatch.start()
    expect(stopwatch.state()).toEqual 'running'

  xit 'start does not change previous laps', ->
    stopwatch = new SplitSecondStopwatch
    stopwatch.start()
    expect(stopwatch.previousLaps()).toEqual []

  xit 'start initiates time tracking for current lap', ->
    stopwatch = new SplitSecondStopwatch
    stopwatch.start()
    stopwatch.advanceTime '00:00:05'
    expect(stopwatch.currentLap()).toEqual '00:00:05'

  xit 'start initiates time tracking for total', ->
    stopwatch = new SplitSecondStopwatch
    stopwatch.start()
    stopwatch.advanceTime '00:00:23'
    expect(stopwatch.total()).toEqual '00:00:23'

  xit 'start cannot be called from running state', ->
    stopwatch = new SplitSecondStopwatch
    stopwatch.start()
    expect(-> stopwatch.start()).toThrow 'cannot start an already running stopwatch'

  xit 'stop from running state changes state to stopped', ->
    stopwatch = new SplitSecondStopwatch
    stopwatch.start()
    stopwatch.stop()
    expect(stopwatch.state()).toEqual 'stopped'

  xit 'stop pauses time tracking for current lap', ->
    stopwatch = new SplitSecondStopwatch
    stopwatch.start()
    stopwatch.advanceTime '00:00:05'
    stopwatch.stop()
    stopwatch.advanceTime '00:00:08'
    expect(stopwatch.currentLap()).toEqual '00:00:05'

  xit 'stop pauses time tracking for total', ->
    stopwatch = new SplitSecondStopwatch
    stopwatch.start()
    stopwatch.advanceTime '00:00:13'
    stopwatch.stop()
    stopwatch.advanceTime '00:00:44'
    expect(stopwatch.total()).toEqual '00:00:13'

  xit 'stop cannot be called from ready state', ->
    stopwatch = new SplitSecondStopwatch
    expect(-> stopwatch.stop()).toThrow 'cannot stop a stopwatch that is not running'

  xit 'stop cannot be called from stopped state', ->
    stopwatch = new SplitSecondStopwatch
    stopwatch.start()
    stopwatch.stop()
    expect(-> stopwatch.stop()).toThrow 'cannot stop a stopwatch that is not running'

  xit 'start from stopped state changes state to running', ->
    stopwatch = new SplitSecondStopwatch
    stopwatch.start()
    stopwatch.stop()
    stopwatch.start()
    expect(stopwatch.state()).toEqual 'running'

  xit 'start from stopped state resumes time tracking for current lap', ->
    stopwatch = new SplitSecondStopwatch
    stopwatch.start()
    stopwatch.advanceTime '00:01:20'
    stopwatch.stop()
    stopwatch.advanceTime '00:00:20'
    stopwatch.start()
    stopwatch.advanceTime '00:00:08'
    expect(stopwatch.currentLap()).toEqual '00:01:28'

  xit 'start from stopped state resumes time tracking for total', ->
    stopwatch = new SplitSecondStopwatch
    stopwatch.start()
    stopwatch.advanceTime '00:00:23'
    stopwatch.stop()
    stopwatch.advanceTime '00:00:44'
    stopwatch.start()
    stopwatch.advanceTime '00:00:09'
    expect(stopwatch.total()).toEqual '00:00:32'

  xit 'lap adds current lap to previous laps', ->
    stopwatch = new SplitSecondStopwatch
    stopwatch.start()
    stopwatch.advanceTime '00:01:38'
    stopwatch.lap()
    expect(stopwatch.previousLaps()).toEqual ['00:01:38']
    stopwatch.advanceTime '00:00:44'
    stopwatch.lap()
    expect(stopwatch.previousLaps()).toEqual ['00:01:38','00:00:44']

  xit 'lap resets current lap and resumes time tracking', ->
    stopwatch = new SplitSecondStopwatch
    stopwatch.start()
    stopwatch.advanceTime '00:08:22'
    stopwatch.lap()
    expect(stopwatch.currentLap()).toEqual '00:00:00'
    stopwatch.advanceTime '00:00:15'
    expect(stopwatch.currentLap()).toEqual '00:00:15'

  xit 'lap continues time tracking for total', ->
    stopwatch = new SplitSecondStopwatch
    stopwatch.start()
    stopwatch.advanceTime '00:00:22'
    stopwatch.lap()
    stopwatch.advanceTime '00:00:33'
    expect(stopwatch.total()).toEqual '00:00:55'

  xit 'lap cannot be called from ready state', ->
    stopwatch = new SplitSecondStopwatch
    expect(-> stopwatch.lap()).toThrow 'cannot lap a stopwatch that is not running'

  xit 'lap cannot be called from stopped state', ->
    stopwatch = new SplitSecondStopwatch
    stopwatch.start()
    stopwatch.stop()
    expect(-> stopwatch.lap()).toThrow 'cannot lap a stopwatch that is not running'

  xit 'stop does not change previous laps', ->
    stopwatch = new SplitSecondStopwatch
    stopwatch.start()
    stopwatch.advanceTime '00:11:22'
    stopwatch.lap()
    expect(stopwatch.previousLaps()).toEqual ['00:11:22']
    stopwatch.stop()
    expect(stopwatch.previousLaps()).toEqual ['00:11:22']

  xit 'reset from stopped state changes state to ready', ->
    stopwatch = new SplitSecondStopwatch
    stopwatch.start()
    stopwatch.stop()
    stopwatch.reset()
    expect(stopwatch.state()).toEqual 'ready'

  xit 'reset resets current lap', ->
    stopwatch = new SplitSecondStopwatch
    stopwatch.start()
    stopwatch.advanceTime '00:00:10'
    stopwatch.stop()
    stopwatch.reset()
    expect(stopwatch.currentLap()).toEqual '00:00:00'

  xit 'reset clears previous laps', ->
    stopwatch = new SplitSecondStopwatch
    stopwatch.start()
    stopwatch.advanceTime '00:00:10'
    stopwatch.lap()
    stopwatch.advanceTime '00:00:20'
    stopwatch.lap()
    expect(stopwatch.previousLaps()).toEqual ['00:00:10','00:00:20']
    stopwatch.stop()
    stopwatch.reset()
    expect(stopwatch.previousLaps()).toEqual []

  xit 'reset cannot be called from ready state', ->
    stopwatch = new SplitSecondStopwatch
    expect(-> stopwatch.reset()).toThrow 'cannot reset a stopwatch that is not stopped'

  xit 'reset cannot be called from running state', ->
    stopwatch = new SplitSecondStopwatch
    stopwatch.start()
    expect(-> stopwatch.reset()).toThrow 'cannot reset a stopwatch that is not stopped'

  xit 'supports very long laps', ->
    stopwatch = new SplitSecondStopwatch
    stopwatch.start()
    stopwatch.advanceTime '01:23:45'
    expect(stopwatch.currentLap()).toEqual '01:23:45'
    stopwatch.lap()
    expect(stopwatch.previousLaps()).toEqual ['01:23:45']
    stopwatch.advanceTime '04:01:40'
    expect(stopwatch.currentLap()).toEqual '04:01:40'
    expect(stopwatch.total()).toEqual '05:25:25'
    stopwatch.lap()
    expect(stopwatch.previousLaps()).toEqual ['01:23:45','04:01:40']
    stopwatch.advanceTime '08:43:05'
    expect(stopwatch.currentLap()).toEqual '08:43:05'
    expect(stopwatch.total()).toEqual '14:08:30'
    stopwatch.lap()
    expect(stopwatch.previousLaps()).toEqual ['01:23:45','04:01:40','08:43:05']


