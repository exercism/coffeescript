Anagram = require './anagram'

###
  The toEqualUnordered matcher defined at the bottom
  checks if your returned collection has the
  right elements regardless of order.
###

describe 'Anagram', ->
  it 'no matches', ->
    detector = new Anagram 'diaper'
    matches = detector.match ['hello', 'world', 'zombies', 'pants']
    expect(matches).toEqualUnordered []

  xit 'detects two anagrams', ->
    detector = new Anagram 'solemn'
    matches = detector.match ['lemons', 'cherry', 'melons']
    expect(matches).toEqualUnordered ['lemons', 'melons']

  xit 'does not detect anagram subsets', ->
    detector = new Anagram 'good'
    matches = detector.match ['dog', 'goody']
    expect(matches).toEqualUnordered []

  xit 'detects anagram', ->
    detector = new Anagram 'listen'
    matches = detector.match ['enlists', 'google', 'inlets', 'banana']
    expect(matches).toEqualUnordered ['inlets']

  xit 'detects three anagrams', ->
    detector = new Anagram 'allergy'
    matches = detector.match [
      'gallery'
      'ballerina'
      'regally'
      'clergy'
      'largely'
      'leading'
    ]
    expect(matches).toEqualUnordered ['gallery', 'largely', 'regally']

  xit 'detects multiple anagrams with different case', ->
    detector = new Anagram 'nose'
    matches = detector.match ['Eons', 'ONES']
    expect(matches).toEqualUnordered ['Eons', 'ONES']

  xit 'does not detect non-anagrams with identical checksums', ->
    detector = new Anagram 'mass'
    matches = detector.match ['last']
    expect(matches).toEqualUnordered []

  xit 'detects anagrams case-insensitively', ->
    detector = new Anagram 'Orchestra'
    matches = detector.match ['cashregister', 'Carthorse', 'radishes']
    expect(matches).toEqualUnordered ['Carthorse']

  xit 'detects anagrams using case-insensitive subject', ->
    detector = new Anagram 'Orchestra'
    matches = detector.match ['cashregister', 'carthorse', 'radishes']
    expect(matches).toEqualUnordered ['carthorse']

  xit 'detects anagrams using case-insensitive possible matches', ->
    detector = new Anagram 'Orchestra'
    matches = detector.match ['cashregister', 'Carthorse', 'radishes']
    expect(matches).toEqualUnordered ['Carthorse']

  xit 'does not detect an anagram if the original word is repeated', ->
    detector = new Anagram 'go'
    matches = detector.match ['goGoGO']
    expect(matches).toEqualUnordered []

  xit 'anagrams must use all letters exactly once', ->
    detector = new Anagram 'tapper'
    matches = detector.match ['patter']
    expect(matches).toEqualUnordered []

  xit 'words are not anagrams of themselve', ->
    detector = new Anagram 'BANANA'
    matches = detector.match ['BANANA']
    expect(matches).toEqualUnordered []

  xit 'words are not anagrams of themselves even if letter case is partially different', ->
    detector = new Anagram 'BANANA'
    matches = detector.match ['Banana']
    expect(matches).toEqualUnordered []

  xit 'words are not anagrams of themselves even if letter case is completely different', ->
    detector = new Anagram 'BANANA'
    matches = detector.match ['banana']
    expect(matches).toEqualUnordered []

  xit 'words other than themselves can be anagrams', ->
    detector = new Anagram 'LISTEN'
    matches = detector.match ['LISTEN', 'Silent']
    expect(matches).toEqualUnordered ['Silent']

  beforeEach ->
    @addMatchers
      toEqualUnordered: (expected) ->
        if not @actual? or not Array.isArray @actual or not @actual instanceof Set
          @message = -> "Anagram::match should return an array or set but instead returned #{JSON.stringify @actual}." 
          return false

        matches = Array.from @actual
        if matches.length != expected.length or not matches.every((value) -> expected.includes value)
          @message = -> "Expected returned values (#{matches.join(', ')}) to be equal (unordered) to expected values (#{expected.join(', ')})."
          return false
        true
