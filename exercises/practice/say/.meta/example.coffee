class Say
  @say: (number) ->
    throw new Error 'input out of range' if number < 0 or  number > 999999999999

    if number is 0
      return 'zero'

    chunks = @chunksFromRight number.toString()
    words = (chunks.map Number).map @toWords.bind @
    words = words.map @applyScale.bind @
    words = words.filter (word) -> word isnt ''
    words.reverse().join(' ')

  @chunksFromRight: (str) ->
    chunks = []
    working = str

    while working.length > 0
      chunks.push working.slice -3
      working = working.slice 0, -3

    chunks

  @toWords: (chunk) ->
    words = []
    if chunk < 20
      words.push @firstTwentyNumbers[chunk]
    else if chunk < 100
      tens = @wordsForTens[Math.floor(chunk / 10)]
      ones = @firstTwentyNumbers[chunk % 10]
      if ones
        words.push "#{tens}-#{ones}"
      else
        words.push tens
    else
      hundreds = @firstTwentyNumbers[Math.floor(chunk / 100)]
      rest = @toWords(chunk % 100)
      if rest
        words.push "#{hundreds} hundred #{rest}"
      else
        words.push "#{hundreds} hundred"

    words.join ' '

  @applyScale: (word, index) ->
    if word is ''
      return ''
    if index == 0
      return word    
    if index == 1
      return "#{word} thousand"
    if index == 2
      return "#{word} million"
    if index == 3
      return "#{word} billion"
    else
      return word

  @firstTwentyNumbers: [
    '', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine', 'ten',
    'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen'
  ]

  @wordsForTens: [
    '', 'ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety'
  ]

module.exports = Say
