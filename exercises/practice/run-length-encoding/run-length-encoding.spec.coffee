RLE = require './run-length-encoding'

describe 'Run Length Encoding', ->
  describe 'encode', ->
    it 'empty string', ->
      input = ''
      expected = ''
      expect(RLE.encode input).toEqual expected

    xit 'single characters only are encoded without count', ->
      input = 'XYZ'
      expected = 'XYZ'
      expect(RLE.encode input).toEqual expected

    xit 'string with no single characters', ->
      input = 'AABBBCCCC'
      expected = '2A3B4C'
      expect(RLE.encode input).toEqual expected

    xit 'string with single characters mixed with repeated characters', ->
      input = 'WWWWWWWWWWWWBWWWWWWWWWWWWBBBWWWWWWWWWWWWWWWWWWWWWWWWB'
      expected = '12WB12W3B24WB'
      expect(RLE.encode input).toEqual expected
    
    xit 'string with multiple whitespace mixed', ->
      input = '  hsqq qww  '
      expected = '2 hs2q q2w2 '
      expect(RLE.encode input).toEqual expected
    
    xit 'string with lowercase characters', ->
      input = 'aabbbcccc'
      expected = '2a3b4c'
      expect(RLE.encode input).toEqual expected
    
  describe 'decode', ->
    xit 'empty string', ->
      input = ''
      expected = ''
      expect(RLE.decode input).toEqual expected

    xit 'string with single characters only', ->
      input = 'XYZ'
      expected = 'XYZ'
      expect(RLE.decode input).toEqual expected

    xit 'string with no single characters', ->
      input = '2A3B4C'
      expected = 'AABBBCCCC'
      expect(RLE.decode input).toEqual expected

    xit 'string with single characters mixed with repeated characters', ->
      input = '12WB12W3B24WB'
      expected = 'WWWWWWWWWWWWBWWWWWWWWWWWWBBBWWWWWWWWWWWWWWWWWWWWWWWWB'
      expect(RLE.decode input).toEqual expected

    xit 'string with multiple whitespaces', ->
      input = '2 hs2q q2w2 '
      expected = '  hsqq qww  '
      expect(RLE.decode input).toEqual expected

    xit 'string with lowercase characters', ->
      input = '2a3b4c'
      expected = 'aabbbcccc'
      expect(RLE.decode input).toEqual expected
  
  xit 'encode followed by decode gives original string', ->
    plainText = 'zzz ZZ  zZ'
    input = RLE.encode plainText
    expected = 'zzz ZZ  zZ'
    expect(RLE.decode input).toEqual expected
