SpaceAge = require './space-age'

describe 'SpaceAge', ->
  it 'age on earth', ->
    results = SpaceAge.onEarth 1000000000
    expected = 31.69
    expect(results).toBeCloseTo expected

  xit 'age on Mercury', ->
    results = SpaceAge.onMercury 2134835688
    expected = 280.88
    expect(results).toBeCloseTo expected

  xit 'age on Venus', ->
    results = SpaceAge.onVenus 189839836
    expected = 9.78
    expect(results).toBeCloseTo expected

  xit 'age on Mars', ->
    results = SpaceAge.onMars 2129871239
    expected = 35.88
    expect(results).toBeCloseTo expected

  xit 'age on Jupiter', ->
    results = SpaceAge.onJupiter 901876382
    expected = 2.41
    expect(results).toBeCloseTo expected

  xit 'age on Saturn', ->
    results = SpaceAge.onSaturn 2000000000
    expected = 2.15
    expect(results).toBeCloseTo expected

  xit 'age on Uranus', ->
    results = SpaceAge.onUranus 1210123456
    expected = 0.46
    expect(results).toBeCloseTo expected

  xit 'age on Neptune', ->
    results = SpaceAge.onNeptune 1821023456
    expected = 0.35
    expect(results).toBeCloseTo expected
