Minesweeper = require './minesweeper'

describe 'Minesweeper', ->
  it 'no rows', ->
    minefield = []
    expect(Minesweeper.annotate minefield).toEqual []

  xit 'no columns', ->
    minefield = ['']
    expect(Minesweeper.annotate minefield).toEqual ['']

  xit 'no mines', ->
    minefield = [
      '   '
      '   '
      '   '
    ]
    expect(Minesweeper.annotate minefield).toEqual [
      '   '
      '   '
      '   '
    ]

  xit 'minefield with only mines', ->
    minefield = [
      '***'
      '***'
      '***'
    ]
    expect(Minesweeper.annotate minefield).toEqual [
      '***'
      '***'
      '***'
    ]

  xit 'mine surrounded by spaces', ->
    minefield = [
      '   '
      ' * '
      '   '
    ]
    expect(Minesweeper.annotate minefield).toEqual [
      '111'
      '1*1'
      '111'
    ]

  xit 'space surrounded by mines', ->
    minefield = [
      '***'
      '* *'
      '***'
    ]
    expect(Minesweeper.annotate minefield).toEqual [
      '***'
      '*8*'
      '***'
    ]

  xit 'horizontal line', ->
    minefield = [' * * ']
    expect(Minesweeper.annotate minefield).toEqual ['1*2*1']

  xit 'horizontal line, mines at edges', ->
    minefield = ['*   *']
    expect(Minesweeper.annotate minefield).toEqual ['*1 1*']

  xit 'vertical line', ->
    minefield = [
      ' '
      '*'
      ' '
      '*'
      ' '
    ]
    expect(Minesweeper.annotate minefield).toEqual [
      '1'
      '*'
      '2'
      '*'
      '1'
    ]

  xit 'vertical line, mines at edges', ->
    minefield = [
      '*'
      ' '
      ' '
      ' '
      '*'
    ]
    expect(Minesweeper.annotate minefield).toEqual [
      '*'
      '1'
      ' '
      '1'
      '*'
    ]

  xit 'cross', ->
    minefield = [
      '  *  '
      '  *  '
      '*****'
      '  *  '
      '  *  '
    ]
    expect(Minesweeper.annotate minefield).toEqual [
      ' 2*2 '
      '25*52'
      '*****'
      '25*52'
      ' 2*2 '
    ]

  xit 'large minefield', ->
    minefield = [
      ' *  * '
      '  *   '
      '    * '
      '   * *'
      ' *  * '
      '      '
    ]
    expect(Minesweeper.annotate minefield).toEqual [
      '1*22*1'
      '12*322'
      ' 123*2'
      '112*4*'
      '1*22*2'
      '111111'
    ]
