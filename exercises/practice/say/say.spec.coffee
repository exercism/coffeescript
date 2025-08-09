Say = require './say'

describe 'Say', ->
  it 'zero', ->
    expect(Say.say 0).toEqual 'zero'

  xit 'one', ->
    expect(Say.say 1).toEqual 'one'

  xit 'fourteen', ->
    expect(Say.say 14).toEqual 'fourteen'
  
  xit 'twenty', ->
    expect(Say.say 20).toEqual 'twenty'

  xit 'twenty-two', ->
    expect(Say.say 22).toEqual 'twenty-two'

  xit 'thirty', ->
    expect(Say.say 30).toEqual 'thirty'

  xit 'ninety-nine', ->
    expect(Say.say 99).toEqual 'ninety-nine'

  xit 'one hundred', ->
    expect(Say.say 100).toEqual 'one hundred'

  xit 'one hundred twenty-three', ->
    expect(Say.say 123).toEqual 'one hundred twenty-three'

  xit 'two hundred', ->
    expect(Say.say 200).toEqual 'two hundred'

  xit 'nine hundred ninety-nine', ->
    expect(Say.say 999).toEqual 'nine hundred ninety-nine'

  xit 'one thousand', ->
    expect(Say.say 1000).toEqual 'one thousand'

  xit 'one thousand two hundred thirty-four', ->
    expect(Say.say 1234).toEqual 'one thousand two hundred thirty-four'

  xit 'one million', ->
    expect(Say.say 1000000).toEqual 'one million'

  xit 'one million two thousand three hundred forty-five', ->
    expect(Say.say 1002345).toEqual 'one million two thousand three hundred forty-five'

  xit 'one billion', ->
    expect(Say.say 1000000000).toEqual 'one billion'

  xit 'a big number', ->
    expect(Say.say 987654321123).toEqual 'nine hundred eighty-seven billion ' + 
                                         'six hundred fifty-four million ' +
                                         'three hundred twenty-one thousand ' +
                                         'one hundred twenty-three'

  xit 'numbers below zero are out of range', ->
    expect ->
      Say.say -1
    .toThrow new Error 'input out of range'

  xit 'numbers above 999,999,999,999 are out of range', ->
    expect ->
      Say.say 1000000000000
    .toThrow new Error 'input out of range'
