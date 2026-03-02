class SplitSecondStopwatch
  constructor: ->
    @_state = 'ready'
    @_totalSeconds = 0
    @_currentLapSeconds = 0
    @_previousLaps = []

  state: -> @_state

  currentLap: -> @_formatTime @_currentLapSeconds

  total: -> @_formatTime @_totalSeconds

  previousLaps: -> @_previousLaps.map (s) => @_formatTime s

  start: ->
    if @_state is 'running'
      throw new Error 'cannot start an already running stopwatch'
    @_state = 'running'

  stop: ->
    if @_state isnt 'running'
      throw new Error 'cannot stop a stopwatch that is not running'
    @_state = 'stopped'

  lap: ->
    if @_state isnt 'running'
      throw new Error 'cannot lap a stopwatch that is not running'
    @_previousLaps.push @_currentLapSeconds
    @_currentLapSeconds = 0

  reset: ->
    if @_state isnt 'stopped'
      throw new Error 'cannot reset a stopwatch that is not stopped'
    @_state = 'ready'
    @_totalSeconds = 0
    @_currentLapSeconds = 0
    @_previousLaps = []

  advanceTime: (amount) ->
    seconds = @_parseTime(amount)
    if @_state is 'running'
      @_currentLapSeconds += seconds
      @_totalSeconds += seconds

  _parseTime: (amount) ->
    [h, m, s] = amount.split(':').map Number
    h * 3600 + m * 60 + s

  _formatTime: (totalSeconds) ->
    h = Math.floor totalSeconds / 3600
    m = Math.floor (totalSeconds % 3600) / 60
    s = totalSeconds % 60
    
    cleaned = (num) ->
      str = num.toString()
      if str.length < 2 then "0#{str}" else str
    
    "#{cleaned h}:#{cleaned m}:#{cleaned s}"

module.exports = SplitSecondStopwatch
