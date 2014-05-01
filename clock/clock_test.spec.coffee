Clock = require './clock'

describe "Clock", ->
  it "prints the hour", ->
    expect(Clock.at(8).to_s).toEqual "08:00"
