SecretHandshake = require './secret-handshake'

describe "SecretHandshake", ->
  it "wink for 1", ->
    results = SecretHandshake.commands 1
    expected = ["wink"]
    expect(results).toEqual expected

  xit "double blink for 10", ->
    results = SecretHandshake.commands 2
    expected = ["double blink"]
    expect(results).toEqual expected

  xit "close your eyes for 100", ->
    results = SecretHandshake.commands 4
    expected = ["close your eyes"]
    expect(results).toEqual expected

  xit "jump for 1000", ->
    results = SecretHandshake.commands 8
    expected = ["jump"]
    expect(results).toEqual expected

  xit "combine two actions", ->
    results = SecretHandshake.commands 3
    expected = ["wink", "double blink"]
    expect(results).toEqual expected

  xit "reverse two actions", ->
    results = SecretHandshake.commands 19
    expected = ["double blink", "wink"]
    expect(results).toEqual expected

  xit "reversing one action gives the same action", ->
    results = SecretHandshake.commands 24
    expected = ["jump"]
    expect(results).toEqual expected

  xit "reversing no actions still gives no actions", ->
    results = SecretHandshake.commands 16
    expected = []
    expect(results).toEqual expected

  xit "reversing no actions still gives no actions", ->
    results = SecretHandshake.commands 15
    expected = ["wink", "double blink", "close your eyes", "jump"]
    expect(results).toEqual expected

  xit "reverse all possible actions", ->
    results = SecretHandshake.commands 31
    expected = ["jump", "close your eyes", "double blink", "wink"]
    expect(results).toEqual expected

  xit "do nothing for zero", ->
    results = SecretHandshake.commands 0
    expected = []
    expect(results).toEqual expected
