class Atbash

  @encode: (str) ->
    cipher = buildCipher()
    encodedLetters = (cipher[letter] for letter in cleanSplit(str))
    cleanJoin(encodedLetters)

  cleanSplit = (str) ->
    str.toLowerCase().split('')

  cleanJoin = (chars) ->
    chars.join('').match(/.{1,5}/g).join(" ")

  buildCipher = ->
    cipher = {}
    alphabet = 'abcdefghijklmnopqrstuvwxyz'
    numbers = '0123456789'
    for letter, index in alphabet.split('')
      cipher[letter] = alphabet[25-index]
    for number in numbers.split('')
      cipher[number] = number
    cipher

module.exports = Atbash
