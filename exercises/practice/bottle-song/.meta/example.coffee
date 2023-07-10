class BottleSong
  recite: (start, end) ->
    result = []
    for i in [(start - end + 1)..start].reverse()
      if result.length > 0
        result.push('')
      result.push(@verse(i))
    result.flat()

  verse: (number) ->
    bottles = @bottles(number)
    say = @say(number)
    sayUpper = say.charAt(0).toUpperCase() + say.slice(1)
    [
      "#{sayUpper} green #{bottles} hanging on the wall,",
      "#{sayUpper} green #{bottles} hanging on the wall,",
      "And if #{@say(1)} green #{@bottles(1)} should accidentally fall,",
      "There'll be #{@say(number - 1)} green #{@bottles(number - 1)} hanging on the wall.",
    ]

  bottles: (number) ->
    if number == 1
      'bottle'
    else
      'bottles'

  say: (number) ->
    [
      "no", "one", "two", "three", "four", "five",
      "six", "seven", "eight", "nine", "ten",
    ][number]

module.exports = BottleSong
