HelloWorld = require "./hello_world"

describe 'HelloWorld', ->
  hello_world = new HelloWorld()

  it "says 'Hello, World!'", ->
    result = hello_world.hello()
    expect(result).toEqual 'Hello, World!'
