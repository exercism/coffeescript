class HelloWorld
    hello: (name = '') ->
      if name == '' then 'Hello, World!' else "Hello, #{name}!"
module.exports = HelloWorld
