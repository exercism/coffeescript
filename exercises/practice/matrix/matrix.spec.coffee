Matrix = require './matrix'

describe 'Matrix', ->
    it 'extract row from one number matrix', ->
      matrix = new Matrix "1"
      expect(matrix.row 1).toEqual [1]

    xit 'can extract row', ->
      matrix = new Matrix "1 2\n3 4"
      expect(matrix.row 2).toEqual [3, 4]

    xit 'extract row where numbers have different widths', ->
      matrix = new Matrix "1 2\n10 20"
      expect(matrix.row 2).toEqual [10, 20]

    xit 'can extract row from non-square matrix with no corresponding column', ->
      matrix = new Matrix "1 2 3\n4 5 6\n7 8 9\n8 7 6"
      expect(matrix.row 4).toEqual [8, 7, 6]

    xit 'extract column from one number matrix', ->
      matrix = new Matrix "1"
      expect(matrix.column 1).toEqual [1]

    xit 'can extract column', ->
      matrix = new Matrix "1 2 3\n4 5 6\n7 8 9"
      expect(matrix.column 3).toEqual [3, 6, 9]

    xit 'can extract column from non-square matrix with no corresponding row', ->
      matrix = new Matrix "1 2 3 4\n5 6 7 8\n9 8 7 6"
      expect(matrix.column 4).toEqual [4, 8, 6]

    xit 'extract column where numbers have different widths', ->
      matrix = new Matrix "89 1903 3\n18 3 1\n9 4 800"
      expect(matrix.column 2).toEqual [1903, 3, 4]
