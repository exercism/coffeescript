class RotationalCipher
  constructor: (@shift) ->

  rotate: (text) ->
    text.split('').map((char) =>
      if char.match(/[a-z]/)
        String.fromCharCode(((char.charCodeAt(0) - 97 + @shift) % 26) + 97)
      else if char.match(/[A-Z]/)
        String.fromCharCode(((char.charCodeAt(0) - 65 + @shift) % 26) + 65)
      else
        char).join ''

module.exports = RotationalCipher
