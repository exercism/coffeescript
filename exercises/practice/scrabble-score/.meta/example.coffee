class ScrabbleScore
  @score: (word) ->
    return 0 if word is ''
    word.toLowerCase().split('').reduce (sum, letter) ->
      sum + ScrabbleScore.letterScore(letter)
    , 0

  @letterScore: (letter) ->
    switch letter
      when 'a', 'e', 'i', 'o', 'u', 'l', 'n', 'r', 's', 't' then 1
      when 'd', 'g'                                         then 2
      when 'b', 'c', 'm', 'p'                               then 3
      when 'f', 'h', 'v', 'w', 'y'                          then 4
      when 'k'                                              then 5
      when 'j', 'x'                                         then 8
      when 'q', 'z'                                         then 10
      else 0

module.exports = ScrabbleScore
