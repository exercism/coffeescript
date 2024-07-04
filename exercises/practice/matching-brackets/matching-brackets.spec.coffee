MatchingBrackets = require './matching-brackets'

describe 'Matching Brackets', ->
  it 'paired square brackets', ->
    value = '[]'
    expect(MatchingBrackets.isPaired value).toBe true

  it 'empty string', ->
    value = ''
    expect(MatchingBrackets.isPaired value).toBe true

  it 'unpaired brackets', ->
    value = '[['
    expect(MatchingBrackets.isPaired value).toBe false

  it 'wrong ordered brackets', ->
    value = '}{'
    expect(MatchingBrackets.isPaired value).toBe false

  it 'wrong closing bracket', ->
    value = '{]'
    expect(MatchingBrackets.isPaired value).toBe false

  it 'paired with whitespace', ->
    value = '{ }'
    expect(MatchingBrackets.isPaired value).toBe true

  it 'partially paired brackets', ->
    value = '{[])'
    expect(MatchingBrackets.isPaired value).toBe false

  it 'simple nested brackets', ->
    value = '{[]}'
    expect(MatchingBrackets.isPaired value).toBe true

  it 'several paired brackets', ->
    value = '{}[]'
    expect(MatchingBrackets.isPaired value).toBe true

  it 'paired and nested brackets', ->
    value = '([{}({}[])])'
    expect(MatchingBrackets.isPaired value).toBe true

  it 'unopened closing brackets', ->
    value = '{[)][]}'
    expect(MatchingBrackets.isPaired value).toBe false

  it 'unpaired and nested brackets', ->
    value = '([{])'
    expect(MatchingBrackets.isPaired value).toBe false

  it 'paired and wrong nested brackets', ->
    value = '[({]})'
    expect(MatchingBrackets.isPaired value).toBe false

  it 'paired and wrong nested brackets but innermost are correct', ->
    value = '[({}])'
    expect(MatchingBrackets.isPaired value).toBe false

  it 'paired and incomplete brackets', ->
    value = '{}['
    expect(MatchingBrackets.isPaired value).toBe false

  it 'too many closing brackets', ->
    value = '[]]'
    expect(MatchingBrackets.isPaired value).toBe false

  it 'early unexpected brackets', ->
    value = ')()'
    expect(MatchingBrackets.isPaired value).toBe false

  it 'early mismatched brackets', ->
    value = '{)()'
    expect(MatchingBrackets.isPaired value).toBe false

  it 'math expression', ->
    value = '(((185 + 223.85) * 15) - 543)/2'
    expect(MatchingBrackets.isPaired value).toBe true

  it 'complex latex expression', ->
    value = '\\left(\\begin{array}{cc} \\frac{1}{3} & x\\\\ \\mathrm{e}^{x} &... x^2 \\end{array}\\right)'
    expect(MatchingBrackets.isPaired value).toBe true
