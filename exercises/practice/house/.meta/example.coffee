class House
  @subjects: [
    'house that Jack built'
    'malt'
    'rat'
    'cat'
    'dog'
    'cow with the crumpled horn'
    'maiden all forlorn'
    'man all tattered and torn'
    'priest all shaven and shorn'
    'rooster that crowed in the morn'
    'farmer sowing his corn'
    'horse and the hound and the horn'
  ]

  @verbs: [
    'lay in'
    'ate'
    'killed'
    'worried'
    'tossed'
    'milked'
    'kissed'
    'married'
    'woke'
    'kept'
    'belonged to'
  ]

  @verse: (number) ->
    parts = ["This is the #{@subjects[number - 1]}"]
    for i in [number - 2..0] by -1
      parts.push "that #{@verbs[i]} the #{@subjects[i]}"
    parts.join(' ') + '.'

  @verses: (startVerse, endVerse) ->
    result = []
    for i in [start..end]
      result.push @verse(i)
    result.join '\n'

module.exports = House