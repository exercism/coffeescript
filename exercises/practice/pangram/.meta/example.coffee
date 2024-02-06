class Pangram
  @isPangram: (sentence) ->
    letters = new Set(sentence.replace(/[^a-z]+/gi, '').toLowerCase().split "")
    letters.size == 26

module.exports = Pangram
