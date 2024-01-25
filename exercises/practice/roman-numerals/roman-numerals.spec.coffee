RomanNumerals = require './roman-numerals'

describe 'RomanNumerals', ->
  it '1 is I', ->
    results = RomanNumerals.convert(1)
    expected = "I"
    expect(results).toEqual expected

  xit '2 is II', ->
    results = RomanNumerals.convert(2)
    expected = "II"
    expect(results).toEqual expected

  xit '3 is III', ->
    results = RomanNumerals.convert(3)
    expected = "III"
    expect(results).toEqual expected
    
  xit '4 is IV', ->
    results = RomanNumerals.convert(4)
    expected = "IV"
    expect(results).toEqual expected
    
  it '5 is V', ->
    results = RomanNumerals.convert(5)
    expected = "V"
    expect(results).toEqual expected
    
  xit '6 is VI', ->
    results = RomanNumerals.convert(6)
    expected = "VI"
    expect(results).toEqual expected
    
  xit '9 is IX', ->
    results = RomanNumerals.convert(9)
    expected = "IX"
    expect(results).toEqual expected
    
  xit '16 is XVI', ->
    results = RomanNumerals.convert(16)
    expected = "XVI"
    expect(results).toEqual expected
    
  xit '27 is XXVII', ->
    results = RomanNumerals.convert(27)
    expected = "XXVII"
    expect(results).toEqual expected
    
  xit '48 is XLVIII', ->
    results = RomanNumerals.convert(48)
    expected = "XLVIII"
    expect(results).toEqual expected
    
  xit '49 is XLIX', ->
    results = RomanNumerals.convert(49)
    expected = "XLIX"
    expect(results).toEqual expected
    
  xit '59 is LIX', ->
    results = RomanNumerals.convert(59)
    expected = "LIX"
    expect(results).toEqual expected
    
  xit '66 is LXVI', ->
    results = RomanNumerals.convert(66)
    expected = "LXVI"
    expect(results).toEqual expected
    
  xit '93 is XCIII', ->
    results = RomanNumerals.convert(93)
    expected = "XCIII"
    expect(results).toEqual expected
    
  xit '141 is CXLI', ->
    results = RomanNumerals.convert(141)
    expected = "CXLI"
    expect(results).toEqual expected
    
  xit '163 is CLXIII', ->
    results = RomanNumerals.convert(163)
    expected = "CLXIII"
    expect(results).toEqual expected
    
  xit '166 is CLXVI', ->
    results = RomanNumerals.convert(166)
    expected = "CLXVI"
    expect(results).toEqual expected
    
  xit '402 is CDII', ->
    results = RomanNumerals.convert(402)
    expected = "CDII"
    expect(results).toEqual expected
    
  xit '575 is DLXXV', ->
    results = RomanNumerals.convert(575)
    expected = "DLXXV"
    expect(results).toEqual expected
    
  xit '666 is DCLXVI', ->
    results = RomanNumerals.convert(666)
    expected = "DCLXVI"
    expect(results).toEqual expected
    
  xit '911 is CMXI', ->
    results = RomanNumerals.convert(911)
    expected = "CMXI"
    expect(results).toEqual expected
    
  xit '1024 is MXXIV', ->
    results = RomanNumerals.convert(1024)
    expected = "MXXIV"
    expect(results).toEqual expected
    
  xit '1666 is MDCLXVI', ->
    results = RomanNumerals.convert(1666)
    expected = "MDCLXVI"
    expect(results).toEqual expected
        
  xit '3000 is MMM', ->
    results = RomanNumerals.convert(3000)
    expected = "MMM"
    expect(results).toEqual expected

  xit '3001 is MMMI', ->
    results = RomanNumerals.convert(3001)
    expected = "MMMI"
    expect(results).toEqual expected
    
  xit '3999 is MMMCMXCIX', ->
    results = RomanNumerals.convert(3999)
    expected = "MMMCMXCIX"
    expect(results).toEqual expected