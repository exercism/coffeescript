House = require './house'

describe 'House', ->
  it 'verse one - the house that Jack built', ->
    results = House.verse 1
    expected = 'This is the house that Jack built.'
    expect(results).toEqual expected

  xit 'verse two - the malt that lay', ->
    results = House.verse 2
    expected = [
      'This is the malt'
      'that lay in the house that Jack built.'
    ].join ' '
    expect(results).toEqual expected

  xit 'verse three - the rat that ate', ->
    results = House.verse 3
    expected = [
      'This is the rat'
      'that ate the malt'
      'that lay in the house that Jack built.'
    ].join ' '
    expect(results).toEqual expected

  xit 'verse four - the cat that killed', ->
    results = House.verse 4
    expected = [
      'This is the cat'
      'that killed the rat'
      'that ate the malt'
      'that lay in the house that Jack built.'
    ].join ' '
    expect(results).toEqual expected

  xit 'verse five - the dog that worried', ->
    results = House.verse 5
    expected = [
      'This is the dog'
      'that worried the cat'
      'that killed the rat'
      'that ate the malt'
      'that lay in the house that Jack built.'
    ].join ' '
    expect(results).toEqual expected

  xit 'verse six - the cow with the crumpled horn', ->
    results = House.verse 6
    expected = [
      'This is the cow with the crumpled horn'
      'that tossed the dog'
      'that worried the cat'
      'that killed the rat'
      'that ate the malt'
      'that lay in the house that Jack built.'
    ].join ' '
    expect(results).toEqual expected

  xit 'verse seven - the maiden all forlorn', ->
    results = House.verse 7
    expected = [
      'This is the maiden all forlorn'
      'that milked the cow with the crumpled horn'
      'that tossed the dog'
      'that worried the cat'
      'that killed the rat'
      'that ate the malt'
      'that lay in the house that Jack built.'
    ].join ' '
    expect(results).toEqual expected

  xit 'verse eight - the man all tattered and torn', ->
    results = House.verse 8
    expected = [
      'This is the man all tattered and torn'
      'that kissed the maiden all forlorn'
      'that milked the cow with the crumpled horn'
      'that tossed the dog'
      'that worried the cat'
      'that killed the rat'
      'that ate the malt'
      'that lay in the house that Jack built.'
    ].join ' '
    expect(results).toEqual expected

  xit 'verse nine - the priest all shaven and shorn', ->
    results = House.verse 9
    expected = [
      'This is the priest all shaven and shorn'
      'that married the man all tattered and torn'
      'that kissed the maiden all forlorn'
      'that milked the cow with the crumpled horn'
      'that tossed the dog'
      'that worried the cat'
      'that killed the rat'
      'that ate the malt'
      'that lay in the house that Jack built.'
    ].join ' '
    expect(results).toEqual expected

  xit 'verse ten - the rooster that crowed in the morn', ->
    results = House.verse 10
    expected = [
      'This is the rooster that crowed in the morn'
      'that woke the priest all shaven and shorn'
      'that married the man all tattered and torn'
      'that kissed the maiden all forlorn'
      'that milked the cow with the crumpled horn'
      'that tossed the dog'
      'that worried the cat'
      'that killed the rat'
      'that ate the malt'
      'that lay in the house that Jack built.'
    ].join ' '
    expect(results).toEqual expected

  xit 'verse eleven - the farmer sowing his corn', ->
    results = House.verse 11
    expected = [
      'This is the farmer sowing his corn'
      'that kept the rooster that crowed in the morn'
      'that woke the priest all shaven and shorn'
      'that married the man all tattered and torn'
      'that kissed the maiden all forlorn'
      'that milked the cow with the crumpled horn'
      'that tossed the dog'
      'that worried the cat'
      'that killed the rat'
      'that ate the malt'
      'that lay in the house that Jack built.'
    ].join ' '
    expect(results).toEqual expected

  xit 'verse twelve - the horse and the hound and the horn', ->
    results = House.verse 12
    expected = [
      'This is the horse and the hound and the horn'
      'that belonged to the farmer sowing his corn'
      'that kept the rooster that crowed in the morn'
      'that woke the priest all shaven and shorn'
      'that married the man all tattered and torn'
      'that kissed the maiden all forlorn'
      'that milked the cow with the crumpled horn'
      'that tossed the dog'
      'that worried the cat'
      'that killed the rat'
      'that ate the malt'
      'that lay in the house that Jack built.'
    ].join ' '
    expect(results).toEqual expected

  xit 'multiple verses', ->
    results = House.verses 4, 8
    expected = [
       [
        'This is the cat'
        'that killed the rat'
        'that ate the malt'
        'that lay in the house that Jack built.'
       ].join ' '
       [
        'This is the dog'
        'that worried the cat'
        'that killed the rat'
        'that ate the malt'
        'that lay in the house that Jack built.'
       ].join ' '
       [
        'This is the cow with the crumpled horn'
        'that tossed the dog'
        'that worried the cat'
        'that killed the rat'
        'that ate the malt'
        'that lay in the house that Jack built.'
       ].join ' '
       [
        'This is the maiden all forlorn'
        'that milked the cow with the crumpled horn'
        'that tossed the dog'
        'that worried the cat'
        'that killed the rat'
        'that ate the malt'
        'that lay in the house that Jack built.'
       ].join ' '
       [
        'This is the man all tattered and torn'
        'that kissed the maiden all forlorn'
        'that milked the cow with the crumpled horn'
        'that tossed the dog'
        'that worried the cat'
        'that killed the rat'
        'that ate the malt'
        'that lay in the house that Jack built.'
       ].join ' '
    ].join '\n'
    expect(results).toEqual expected

  xit 'full rhyme', ->
    results = House.verses 1, 12
    expected = [
      'This is the house that Jack built.'
      [
        'This is the malt'
        'that lay in the house that Jack built.'
      ].join ' '
      [
        'This is the rat'
        'that ate the malt'
        'that lay in the house that Jack built.'
      ].join ' '
      [
        'This is the cat'
        'that killed the rat'
        'that ate the malt'
        'that lay in the house that Jack built.'
      ].join ' '
      [
        'This is the dog'
        'that worried the cat'
        'that killed the rat'
        'that ate the malt'
        'that lay in the house that Jack built.'
      ].join ' '
      [
        'This is the cow with the crumpled horn'
        'that tossed the dog'
        'that worried the cat'
        'that killed the rat'
        'that ate the malt'
        'that lay in the house that Jack built.'
      ].join ' '
      [
        'This is the maiden all forlorn'
        'that milked the cow with the crumpled horn'
        'that tossed the dog'
        'that worried the cat'
        'that killed the rat'
        'that ate the malt'
        'that lay in the house that Jack built.'
      ].join ' '
      [
        'This is the man all tattered and torn'
        'that kissed the maiden all forlorn'
        'that milked the cow with the crumpled horn'
        'that tossed the dog'
        'that worried the cat'
        'that killed the rat'
        'that ate the malt'
        'that lay in the house that Jack built.'
      ].join ' '
      [
        'This is the priest all shaven and shorn'
        'that married the man all tattered and torn'
        'that kissed the maiden all forlorn'
        'that milked the cow with the crumpled horn'
        'that tossed the dog'
        'that worried the cat'
        'that killed the rat'
        'that ate the malt'
        'that lay in the house that Jack built.'
      ].join ' '
      [
        'This is the rooster that crowed in the morn'
        'that woke the priest all shaven and shorn'
        'that married the man all tattered and torn'
        'that kissed the maiden all forlorn'
        'that milked the cow with the crumpled horn'
        'that tossed the dog'
        'that worried the cat'
        'that killed the rat'
        'that ate the malt'
        'that lay in the house that Jack built.'
      ].join ' '
      [
        'This is the farmer sowing his corn'
        'that kept the rooster that crowed in the morn'
        'that woke the priest all shaven and shorn'
        'that married the man all tattered and torn'
        'that kissed the maiden all forlorn'
        'that milked the cow with the crumpled horn'
        'that tossed the dog'
        'that worried the cat'
        'that killed the rat'
        'that ate the malt'
        'that lay in the house that Jack built.'
      ].join ' '
      [
        'This is the horse and the hound and the horn'
        'that belonged to the farmer sowing his corn'
        'that kept the rooster that crowed in the morn'
        'that woke the priest all shaven and shorn'
        'that married the man all tattered and torn'
        'that kissed the maiden all forlorn'
        'that milked the cow with the crumpled horn'
        'that tossed the dog'
        'that worried the cat'
        'that killed the rat'
        'that ate the malt'
        'that lay in the house that Jack built.'
      ].join ' '
    ].join '\n'
    expect(results).toEqual expected
