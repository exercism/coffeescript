# These tests are auto-generated with test data from:
# https://github.com/exercism/problem-specifications/blob/main/exercises/secret-handshake/canonical-data.json
# File last updated on 2026-11-08T05:01:31+00:00

SecretHandshake = require './secret-handshake'

describe "Secret Handshake", ->
  it "wink for 1", ->
    expect(SecretHandshake.commands 1).toEqual ["wink"]

  xit "double blink for 10", ->
    expect(SecretHandshake.commands 2).toEqual ["double blink"]

  xit "close your eyes for 100", ->
    expect(SecretHandshake.commands 4).toEqual ["close your eyes"]

  xit "jump for 1000", ->
    expect(SecretHandshake.commands 8).toEqual ["jump"]

  xit "combine two actions", ->
    expect(SecretHandshake.commands 3).toEqual ["wink", "double blink"]

  xit "reverse two actions", ->
    expect(SecretHandshake.commands 19).toEqual ["double blink", "wink"]

  xit "reversing one action gives the same action", ->
    expect(SecretHandshake.commands 24).toEqual ["jump"]

  xit "reversing no actions still gives no actions", ->
    expect(SecretHandshake.commands 16).toEqual []

  xit "all possible actions", ->
    expect(SecretHandshake.commands 15).toEqual ["wink", "double blink", "close your eyes", "jump"]

  xit "reverse all possible actions", ->
    expect(SecretHandshake.commands 31).toEqual ["jump", "close your eyes", "double blink", "wink"]

  xit "do nothing for zero", ->
    expect(SecretHandshake.commands 0).toEqual []
