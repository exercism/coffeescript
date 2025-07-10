RotationalCipher = require './rotational-cipher'

describe 'Rotational Cipher', ->
  it 'rotate a by 0, same output as input', ->
    cipher = new RotationalCipher 0
    result = cipher.rotate 'a'
    expected = 'a'
    expect(result).toEqual expected

  xit 'rotate a by 1', ->
    cipher = new RotationalCipher 1
    result = cipher.rotate 'a'
    expected = 'b'
    expect(result).toEqual expected

  xit 'rotate a by 26, same output as input', ->
    cipher = new RotationalCipher 26
    result = cipher.rotate 'a'
    expected = 'a'
    expect(result).toEqual expected

  xit 'rotate m by 13', ->
    cipher = new RotationalCipher 13
    result = cipher.rotate 'm'
    expected = 'z'
    expect(result).toEqual expected

  xit 'rotate n by 13 with wrap around alphabet', ->
    cipher = new RotationalCipher 13
    result = cipher.rotate 'n'
    expected = 'a'
    expect(result).toEqual expected

  xit 'rotate capital letters', ->
    cipher = new RotationalCipher 5
    result = cipher.rotate 'OMG'
    expected = 'TRL'
    expect(result).toEqual expected

  xit 'rotate spaces', ->
    cipher = new RotationalCipher 5
    result = cipher.rotate 'O M G'
    expected = 'T R L'
    expect(result).toEqual expected

  xit 'rotate numbers', ->
    cipher = new RotationalCipher 4
    result = cipher.rotate 'Testing 1 2 3 testing'
    expected = 'Xiwxmrk 1 2 3 xiwxmrk'
    expect(result).toEqual expected

  xit 'rotate punctuation', -> 
    cipher = new RotationalCipher 21
    result = cipher.rotate "Let's eat, Grandma!"
    expected = "Gzo'n zvo, Bmviyhv!"
    expect(result).toEqual expected

  xit 'rotate all letters', ->
    cipher = new RotationalCipher 13
    result = cipher.rotate "The quick brown fox jumps over the lazy dog."
    expected = "Gur dhvpx oebja sbk whzcf bire gur ynml qbt."
    expect(result).toEqual expected
