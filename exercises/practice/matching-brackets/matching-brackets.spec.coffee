MatchingBrackets = require './matching-brackets'

describe 'Matching Brackets', ->
  it 'paired square brackets', ->
    value = '[]'
    expect(MatchingBrackets.isPaired value).toBe true

  xit 'empty string', ->
    value = ''
    expect(MatchingBrackets.isPaired value).toBe true

  xit 'unpaired brackets', ->
    value = '[['
    expect(MatchingBrackets.isPaired value).toBe false

  xit 'wrong ordered brackets', ->
    value = '}{'
    expect(MatchingBrackets.isPaired value).toBe false

  xit 'wrong closing bracket', ->
    value = '{]'
    expect(MatchingBrackets.isPaired value).toBe false

  xit 'paired with whitespace', ->
    value = '{ }'
    expect(MatchingBrackets.isPaired value).toBe true

  xit 'partially paired brackets', ->
    value = '{[])'
    expect(MatchingBrackets.isPaired value).toBe false

  xit 'simple nested brackets', ->
    value = '{[]}'
    expect(MatchingBrackets.isPaired value).toBe true

  xit 'several paired brackets', ->
    value = '{}[]'
    expect(MatchingBrackets.isPaired value).toBe true

  xit 'paired and nested brackets', ->
    value = '([{}({}[])])'
    expect(MatchingBrackets.isPaired value).toBe true

  xit 'unopened closing brackets', ->
    value = '{[)][]}'
    expect(MatchingBrackets.isPaired value).toBe false

  xit 'unpaired and nested brackets', ->
    value = '([{])'
    expect(MatchingBrackets.isPaired value).toBe false

  xit 'paired and wrong nested brackets', ->
    value = '[({]})'
    expect(MatchingBrackets.isPaired value).toBe false

  xit 'paired and wrong nested brackets but innermost are correct', ->
    value = '[({}])'
    expect(MatchingBrackets.isPaired value).toBe false

  xit 'paired and incomplete brackets', ->
    value = '{}['
    expect(MatchingBrackets.isPaired value).toBe false

  xit 'too many closing brackets', ->
    value = '[]]'
    expect(MatchingBrackets.isPaired value).toBe false

  xit 'early unexpected brackets', ->
    value = ')()'
    expect(MatchingBrackets.isPaired value).toBe false

  xit 'early mismatched brackets', ->
    value = '{)()'
    expect(MatchingBrackets.isPaired value).toBe false

  xit 'math expression', ->
    value = '(((185 + 223.85) * 15) - 543)/2'
    expect(MatchingBrackets.isPaired value).toBe true

  xit 'complex latex expression', ->
    value = '\\left(\\begin{array}{cc} \\frac{1}{3} & x\\\\ \\mathrm{e}^{x} &... x^2 \\end{array}\\right)'
    expect(MatchingBrackets.isPaired value).toBe true
