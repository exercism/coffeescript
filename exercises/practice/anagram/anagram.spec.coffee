Anagram = require './anagram'

###
  The toContainSameValues matcher defined at the bottom
  checks if your returned collection has the expected elements
  regardless of the type of collection (array or set).
###

describe 'Anagram', ->
  it 'no matches', ->
    detector = new Anagram 'diaper'
    matches = detector.match ['hello', 'world', 'zombies', 'pants']
    expect(matches).toContainSameValues []

  xit 'detects two anagrams', ->
    detector = new Anagram 'solemn'
    matches = detector.match ['lemons', 'cherry', 'melons']
    expect(matches).toContainSameValues ['lemons', 'melons']

  xit 'does not detect anagram subsets', ->
    detector = new Anagram 'good'
    matches = detector.match ['dog', 'goody']
    expect(matches).toContainSameValues []

  xit 'detects anagram', ->
    detector = new Anagram 'listen'
    matches = detector.match ['enlists', 'google', 'inlets', 'banana']
    expect(matches).toContainSameValues ['inlets']

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
    expect(matches).toContainSameValues ['gallery', 'largely', 'regally']

  xit 'detects multiple anagrams with different case', ->
    detector = new Anagram 'nose'
    matches = detector.match ['Eons', 'ONES']
    expect(matches).toContainSameValues ['Eons', 'ONES']

  xit 'does not detect non-anagrams with identical checksums', ->
    detector = new Anagram 'mass'
    matches = detector.match ['last']
    expect(matches).toContainSameValues []

  xit 'detects anagrams case-insensitively', ->
    detector = new Anagram 'Orchestra'
    matches = detector.match ['cashregister', 'Carthorse', 'radishes']
    expect(matches).toContainSameValues ['Carthorse']

  xit 'detects anagrams using case-insensitive subject', ->
    detector = new Anagram 'Orchestra'
    matches = detector.match ['cashregister', 'carthorse', 'radishes']
    expect(matches).toContainSameValues ['carthorse']

  xit 'detects anagrams using case-insensitive possible matches', ->
    detector = new Anagram 'Orchestra'
    matches = detector.match ['cashregister', 'Carthorse', 'radishes']
    expect(matches).toContainSameValues ['Carthorse']

  xit 'does not detect an anagram if the original word is repeated', ->
    detector = new Anagram 'go'
    matches = detector.match ['goGoGO']
    expect(matches).toContainSameValues []

  xit 'anagrams must use all letters exactly once', ->
    detector = new Anagram 'tapper'
    matches = detector.match ['patter']
    expect(matches).toContainSameValues []

  xit 'words are not anagrams of themselve', ->
    detector = new Anagram 'BANANA'
    matches = detector.match ['BANANA']
    expect(matches).toContainSameValues []

  xit 'words are not anagrams of themselves even if letter case is partially different', ->
    detector = new Anagram 'BANANA'
    matches = detector.match ['Banana']
    expect(matches).toContainSameValues []

  xit 'words are not anagrams of themselves even if letter case is completely different', ->
    detector = new Anagram 'BANANA'
    matches = detector.match ['banana']
    expect(matches).toContainSameValues []

  xit 'words other than themselves can be anagrams', ->
    detector = new Anagram 'LISTEN'
    matches = detector.match ['LISTEN', 'Silent']
    expect(matches).toContainSameValues ['Silent']

  beforeEach ->
    @addMatchers
      toContainSameValues: (expected) ->
        if not @actual? or !(Array.isArray(@actual) || @actual instanceof Set)
          @message = -> "Anagram::match should return an array or set but instead returned #{JSON.stringify @actual}." 
          return false

        matches = Array.from @actual
        if matches.length != expected.length or not matches.every((value) -> expected.includes value)
          @message = -> "Expected returned values (#{matches.join(', ')}) to be equal to expected values (#{expected.join(', ')})."
          return false
        true
