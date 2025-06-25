FlowerField = require './flower-field'

describe 'Flower Field', ->
  it 'no rows', ->
    garden = []
    expect(FlowerField.annotate garden).toEqual []

  xit 'no columns', ->
    garden = ['']
    expect(FlowerField.annotate garden).toEqual ['']

  xit 'no flowers', ->
    garden = [
      '   '
      '   '
      '   '
    ]
    expect(FlowerField.annotate garden).toEqual [
      '   '
      '   '
      '   '
    ]

  xit 'garden full of flowers', ->
    garden = [
      '***'
      '***'
      '***'
    ]
    expect(FlowerField.annotate garden).toEqual [
      '***'
      '***'
      '***'
    ]

  xit 'flower surrounded by spaces', ->
    garden = [
      '   '
      ' * '
      '   '
    ]
    expect(FlowerField.annotate garden).toEqual [
      '111'
      '1*1'
      '111'
    ]

  xit 'space surrounded by flowers', ->
    garden = [
      '***'
      '* *'
      '***'
    ]
    expect(FlowerField.annotate garden).toEqual [
      '***'
      '*8*'
      '***'
    ]

  xit 'horizontal line', ->
    garden = [' * * ']
    expect(FlowerField.annotate garden).toEqual ['1*2*1']

  xit 'horizontal line, flowers at edges', ->
    garden = ['*   *']
    expect(FlowerField.annotate garden).toEqual ['*1 1*']

  xit 'vertical line', ->
    garden = [
      ' '
      '*'
      ' '
      '*'
      ' '
    ]
    expect(FlowerField.annotate garden).toEqual [
      '1'
      '*'
      '2'
      '*'
      '1'
    ]

  xit 'vertical line, flowers at edges', ->
    garden = [
      '*'
      ' '
      ' '
      ' '
      '*'
    ]
    expect(FlowerField.annotate garden).toEqual [
      '*'
      '1'
      ' '
      '1'
      '*'
    ]

  xit 'cross', ->
    garden = [
      '  *  '
      '  *  '
      '*****'
      '  *  '
      '  *  '
    ]
    expect(FlowerField.annotate garden).toEqual [
      ' 2*2 '
      '25*52'
      '*****'
      '25*52'
      ' 2*2 '
    ]

  xit 'large garden', ->
    garden = [
      ' *  * '
      '  *   '
      '    * '
      '   * *'
      ' *  * '
      '      '
    ]
    expect(FlowerField.annotate garden).toEqual [
      '1*22*1'
      '12*322'
      ' 123*2'
      '112*4*'
      '1*22*2'
      '111111'
    ]
