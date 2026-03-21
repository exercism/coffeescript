Transpose = require './transpose'

describe 'Transpose', ->
  it 'empty string', ->
    lines = ''
    expected = ''
    expect(Transpose.transpose lines).toEqual expected

  xit 'two characters in a row', ->
    lines = 'A1'
    expected = "A\n1"
    expect(Transpose.transpose lines).toEqual expected

  xit 'two characters in a column', ->
    lines = "A\n1"
    expected = 'A1'
    expect(Transpose.transpose lines).toEqual expected

  xit 'simple', ->
    lines = [
      'ABC'
      '123'
    ].join '\n'
    expected = [
      'A1'
      'B2'
      'C3'
    ].join '\n'
    expect(Transpose.transpose lines).toEqual expected

  xit 'single line', ->
    lines = 'Single line.'
    expected = [
      'S'
      'i'
      'n'
      'g'
      'l'
      'e'
      ' '
      'l'
      'i'
      'n'
      'e'
      '.'
    ].join '\n'
    expect(Transpose.transpose lines).toEqual expected

  xit 'first line longer than second line', ->
    lines = [
      'The fourth line.'
      'The fifth line.'
    ].join'\n'
    expected = [
      'TT'
      'hh'
      'ee'
      '  '
      'ff'
      'oi'
      'uf'
      'rt'
      'th'
      'h '
      ' l'
      'li'
      'in'
      'ne'
      'e.'
      '.'
    ].join '\n'
    expect(Transpose.transpose lines).toEqual expected

  xit 'second line longer than first line', ->
    lines = [
      'The first line.'
      'The second line.'
    ].join('\n')
    expected = [
      'TT'
      'hh'
      'ee'
      '  '
      'fs'
      'ie'
      'rc'
      'so'
      'tn'
      ' d'
      'l '
      'il'
      'ni'
      'en'
      '.e'
      ' .'
    ].join '\n'
    expect(Transpose.transpose lines).toEqual expected

  xit 'mixed line length', ->
    lines = [
      'The longest line.'
      'A long line.'
      'A longer line.'
      'A line.'
    ].join '\n'
    expected = [
      'TAAA'
      'h   '
      'elll'
      ' ooi'
      'lnnn'
      'ogge'
      'n e.'
      'glr'
      'ei '
      'snl'
      'tei'
      ' .n'
      'l e'
      'i .'
      'n'
      'e'
      '.'
    ].join '\n'
    expect(Transpose.transpose lines).toEqual expected

  xit 'square', ->
    lines = [
      'HEART'
      'EMBER'
      'ABUSE'
      'RESIN'
      'TREND'
    ].join '\n'
    expected = [
      'HEART'
      'EMBER'
      'ABUSE'
      'RESIN'
      'TREND'
    ].join '\n'
    expect(Transpose.transpose lines).toEqual expected

  xit 'rectangle', ->
    lines = [
      'FRACTURE'
      'OUTLINED'
      'BLOOMING'
      'SEPTETTE'
    ].join '\n'
    expected = [
      'FOBS'
      'RULE'
      'ATOP'
      'CLOT'
      'TIME'
      'UNIT'
      'RENT'
      'EDGE'
    ].join '\n'
    expect(Transpose.transpose lines).toEqual expected

  xit 'triangle', ->
    lines = [
      'T'
      'EE'
      'AAA'
      'SSSS'
      'EEEEE'
      'RRRRRR'
    ].join '\n'
    expected = [
      'TEASER'
      ' EASER'
      '  ASER'
      '   SER'
      '    ER'
      '     R'
    ].join '\n'
    expect(Transpose.transpose lines).toEqual expected

  xit 'jagged triangle', ->
    lines = [
      '11'
      '2'
      '3333'
      '444'
      '555555'
      '66666'
    ].join '\n'
    expected = [
      '123456'
      '1 3456'
      '  3456'
      '  3 56'
      '    56'
      '    5'
    ].join '\n'
    expect(Transpose.transpose lines).toEqual expected
