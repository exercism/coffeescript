Queens = require './queens'

describe "Queens", ->
  it "has the correct default positions", ->
    queens = new Queens
    expect(queens.white).toEqual([0,3])
    expect(queens.black).toEqual([7,3])

  xit "initialized with specific placement", ->
    queens = new Queens({white: [3,7], black: [6,1] })
    expect(queens.white).toEqual([3, 7])
    expect(queens.black).toEqual([6, 1])


  xit "cannot occupy the same space", ->
    positioning = { white: [2,4], black: [2,4] }
    expect(-> new Queens(positioning)).toThrow("Queens cannot share the same space")


  xit "toString representation", ->
    positioning = {white: [2, 4], black: [6, 6]}
    queens = new Queens(positioning)
    board = "O O O O O O O O\nO O O O O O O O\nO O O O O O O O\nO O O O O O O O\n" +
      "O O W O O O O O\nO O O O O O O O\nO O O O O O B O\nO O O O O O O O"
    expect(queens.toString()).toEqual(board)

  xit "queens cannot attack", ->
    queens = new Queens({ white: [2,3], black: [4,7] })
    expect(queens.canAttack()).toEqual(false)


  xit "queens can attack when they are on the same row", ->
    queens = new Queens({ white: [2,4], black: [2,7] })
    expect(queens.canAttack()).toEqual(true)


  xit "queens can attack when they are on the same column", ->
    queens = new Queens({ white: [5,4], black: [2,4] })
    expect(queens.canAttack()).toEqual(true)


  xit "queens can attack diagonally", ->
    queens = new Queens({ white: [1, 1], black: [6, 6] })
    expect(queens.canAttack()).toEqual(true)


  xit "queens can attack another diagonally", ->
    queens = new Queens({ white: [0, 6], black: [1, 7] })
    expect(queens.canAttack()).toEqual(true)


  xit "queens can attack yet another diagonally", ->
    queens = new Queens({ white: [4, 1], black: [6, 3] })
    expect(queens.canAttack()).toEqual(true)

  xit "queens can attack yet yet another diagonally", ->
    queens = new Queens({ white: [6, 1], black: [1, 6] })
    expect(queens.canAttack()).toEqual(true)

