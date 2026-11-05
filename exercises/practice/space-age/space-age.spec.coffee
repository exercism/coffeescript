# These tests are auto-generated with test data from:
# https://github.com/exercism/problem-specifications/blob/main/exercises/space-age/canonical-data.json
# File last updated on 2026-11-05T00:03:00+00:00

SpaceAge = require './space-age'

describe "Space Age", ->
  it "age on Earth", ->
    expect(SpaceAge.onEarth 1000000000).toBeCloseTo 31.69

  xit "age on Mercury", ->
    expect(SpaceAge.onMercury 2134835688).toBeCloseTo 280.88

  xit "age on Venus", ->
    expect(SpaceAge.onVenus 189839836).toBeCloseTo 9.78

  xit "age on Mars", ->
    expect(SpaceAge.onMars 2129871239).toBeCloseTo 35.88

  xit "age on Jupiter", ->
    expect(SpaceAge.onJupiter 901876382).toBeCloseTo 2.41

  xit "age on Saturn", ->
    expect(SpaceAge.onSaturn 2000000000).toBeCloseTo 2.15

  xit "age on Uranus", ->
    expect(SpaceAge.onUranus 1210123456).toBeCloseTo 0.46

  xit "age on Neptune", ->
    expect(SpaceAge.onNeptune 1821023456).toBeCloseTo 0.35
