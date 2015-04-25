class HelloWorld
    hello: (name = '') ->
      if name == '' then 'Hello, world!' else "Hello, #{name}!"
module.exports = HelloWorld
