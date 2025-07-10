Pangram = require './pangram'

describe 'Pangram', ->
  it 'empty sentence', ->
    sentence = ''
    expect(Pangram.isPangram sentence).toBe(false)

  xit 'perfect lower case', ->
    sentence = 'abcdefghijklmnopqrstuvwxyz'
    expect(Pangram.isPangram sentence).toBe(true)

  xit 'only lower case', ->
    sentence = 'the quick brown fox jumps over the lazy dog'
    expect(Pangram.isPangram sentence).toBe(true)

  xit 'missing the letter "x"', ->
    sentence = 'a quick movement of the enemy will jeopardize five gunboats'
    expect(Pangram.isPangram sentence).toBe(false)

  xit 'missing the letter "h"', ->
    sentence = 'five boxing wizards jump quickly at it'
    expect(Pangram.isPangram sentence).toBe(false)

  xit 'with underscores', ->
    sentence = 'the_quick_brown_fox_jumps_over_the_lazy_dog'
    expect(Pangram.isPangram sentence).toBe(true)

  xit 'with numbers', ->
    sentence = 'the 1 quick brown fox jumps over the 2 lazy dogs'
    expect(Pangram.isPangram sentence).toBe(true)

  xit 'missing letters replaced by numbers', ->
    sentence = '7h3 qu1ck brown fox jumps ov3r 7h3 lazy dog'
    expect(Pangram.isPangram sentence).toBe(false)

  xit 'mixed case and punctuation', ->
    sentence =  '"Five quacking Zephyrs jolt my wax bed."'
    expect(Pangram.isPangram sentence).toBe(true)

  xit 'a-m and A-M are 26 different characters but not a pangram', ->
    sentence =  'abcdefghijklm ABCDEFGHIJKLM'
    expect(Pangram.isPangram sentence).toBe(false)
