# These tests are auto-generated with test data from:
# https://github.com/exercism/problem-specifications/blob/main/exercises/hello-world/canonical-data.json
# File last updated on 2026-10-30T22:18:02+00:00

HelloWorld = require './hello-world'

describe "Hello World", ->
  it "Say Hi!", ->
    helloWorld = new HelloWorld
    expect(helloWorld.hello()).toEqual "Hello, World!"
