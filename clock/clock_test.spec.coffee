Clock = require './clock'

describe "Clock", ->
  it "prints the hour", ->
    expect(Clock.at(8).toString()).toEqual "08:00"
    expect(Clock.at(9).toString()).toEqual "09:00"

  it "prints past the hour", ->
    expect(Clock.at(11, 9).toString()).toEqual "11:09"
    expect(Clock.at(11, 19).toString()).toEqual "11:19"

  it "can add minutes", ->
    clock = Clock.at(10).plus 3
    expect(clock.toString()).toEqual "10:03"

  it "can add over an hour", ->
    clock = Clock.at(10).plus 61
    expect(clock.toString()).toEqual "11:01"

  it "wraps around midnight", ->
    clock = Clock.at(23, 59).plus 2
    expect(clock.toString()).toEqual "00:01"

  it "can subtract minutes", ->
    clock = Clock.at(10, 3).minus 3
    expect(clock.toString()).toEqual "10:00"

  it "can subtract over an hour", ->
    clock = Clock.at(10, 3).minus 30
    expect(clock.toString()).toEqual "09:33"
    clock = Clock.at(10, 3).minus 70
    expect(clock.toString()).toEqual "08:53"

  it "can know if it's equal to another clock", ->
    clock1 = Clock.at(10, 3)
    clock2 = Clock.at(10, 3)
    expect(clock1.equals clock2).toBe true

  it "can know if it's not equal to another clock", ->
    clock1 = Clock.at(10, 3)
    clock2 = Clock.at(10, 4)
    expect(clock1.equals clock2).toBe false

  it "wraps around midnight backwards", ->
    clock = Clock.at(0, 3).minus 4
    expect(clock.toString()).toEqual "23:59"

