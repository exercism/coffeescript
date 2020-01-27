Luhn = require './luhn'

describe 'Luhn', ->

  it 'single digit strings can not be valid', ->
    luhn = new Luhn('1')
    expect(luhn.valid).toEqual(false)

  xit 'a single zero is invalid', ->
    luhn = new Luhn('0')
    expect(luhn.valid).toEqual(false)

  xit 'a simple valid SIN that remains valid if reversed', ->
    luhn = new Luhn('059')
    expect(luhn.valid).toEqual(true)

  xit 'a simple valid SIN that becomes invalid if reversed', ->
    luhn = new Luhn('59')
    expect(luhn.valid).toEqual(true)

  xit 'a valid Canadian SIN', ->
    luhn = new Luhn('055 444 286')
    expect(luhn.valid).toEqual(true)

  xit 'invalid credit card', ->
    luhn = new Luhn('8273 1232 7352 0569')
    expect(luhn.valid).toEqual(false)

  xit 'invalid credit card', ->
    luhn = new Luhn('8273 1232 7352 0569')
    expect(luhn.valid).toEqual(false)

  xit 'valid number with an even number of digits', ->
    luhn = new Luhn('095 245 88')
    expect(luhn.valid).toEqual(true)

  xit 'valid number with an odd number of spaces', ->
    luhn = new Luhn('234 567 891 234')
    expect(luhn.valid).toEqual(true)

  xit 'valid strings with a non-digit added at the end become invalid', ->
    luhn = new Luhn('059a')
    expect(luhn.valid).toEqual(false)

  xit 'valid strings with punctuation included become invalid', ->
    luhn = new Luhn('055-444-285')
    expect(luhn.valid).toEqual(false)

  xit 'valid strings with symbols included become invalid', ->
    luhn = new Luhn('055# 444$ 285')
    expect(luhn.valid).toEqual(false)

  xit 'single zero with space is invalid', ->
    luhn = new Luhn(' 0')
    expect(luhn.valid).toEqual(false)

  xit 'more than a single zero is valid', ->
    luhn = new Luhn('0000 0')
    expect(luhn.valid).toEqual(true)

  xit 'input digit 9 is correctly converted to output digit 9', ->
    luhn = new Luhn('091')
    expect(luhn.valid).toEqual(true)

  xit 'using ascii value for non-doubled non-digit isn\'t allowed', ->
    luhn = new Luhn('055b 444 285')
    expect(luhn.valid).toEqual(false)

  xit 'using ascii value for non-doubled non-digit isn\'t allowed', ->
    luhn = new Luhn(':9')
    expect(luhn.valid).toEqual(false)
