class PigLatin
  @translate: (phrase) ->
    phrase.split ' '
          .map @translateWord
          .join ' '

  @translateWord: (word) ->
    VOWEL_SOUND_REGEXP = /^([aeiou]|xr|yt)/;
    CONSONANT_SOUND_REGEXP = /^([^aeiou]+(?=y)|[^aeiou]?qu|[^aeiou]+)([a-z]+)/;
    if VOWEL_SOUND_REGEXP.test word
      "#{word}ay"
    else
      newWord = word.replace CONSONANT_SOUND_REGEXP, '$2$1'
      "#{newWord}ay"

module.exports = PigLatin
