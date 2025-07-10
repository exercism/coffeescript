class Atbash
  @encode: (phrase) ->
    phrase = phrase.toLowerCase().replace /[^a-z0-9]/g, ''
    phrase = phrase.replace /[a-z]/g, (letter) ->
      String.fromCharCode 219 - letter.charCodeAt()
    phrase.replace(/(.{5})/g, "$1 ").trim()


  @decode: (phrase) ->
    phrase = phrase.replaceAll(" ", "")
    phrase.replace /[a-z]/g, (letter) ->
      String.fromCharCode 219 - letter.charCodeAt()

module.exports = Atbash
