Clock = require './clock'

describe "Clock", ->
  it "prints the hour", ->
    expect(Clock.at(8).to_s).toEqual "08:00"
    expect(Clock.at(9).to_s).toEqual "09:00"

  it "prints past the hour", ->
    expect(Clock.at(11, 9).to_s).toEqual "11:09"
    expect(Clock.at(11, 19).to_s).toEqual "11:19"
