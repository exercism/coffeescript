SaddlePoints = require './saddle-points'

describe 'SaddlePoints', ->
  it 'can identify single saddle point', ->
    matrix = [
      [9, 8, 7]
      [5, 3, 2]
      [6, 6, 7]]  
    results = SaddlePoints matrix
    expect(results.sort()).toEqual [{row: 2, column: 1}]

  xit 'can identify that empty matrix has no saddle points', ->
    matrix = [[]]
    results = SaddlePoints matrix
    expect(results.sort()).toEqual []

  xit 'can identify lack of saddle points when there are none', ->
    matrix = [
      [1, 2, 3]
      [3, 1, 2]
      [2, 3, 1]]
    results = SaddlePoints matrix
    expect(results.sort()).toEqual []

  xit 'can identify multiple saddle points in a column', ->
    matrix = [
      [4, 5, 4]
      [3, 5, 5]
      [1, 5, 4]]
    results = SaddlePoints matrix
    expect(results.sort()).toEqual [{row: 1, column: 2}
                                    {row: 2, column: 2}
                                    {row: 3, column: 2}]

  xit 'can identify multiple saddle points in a row', ->
    matrix = [
      [6, 7, 8]
      [5, 5, 5]
      [7, 5, 6]]
    results = SaddlePoints matrix
    expect(results.sort()).toEqual [{row: 2, column: 1}
                                    {row: 2, column: 2}
                                    {row: 2, column: 3}]

  xit 'can identify saddle point in bottom right corner', ->
    matrix = [
      [8, 7, 9]
      [6, 7, 6]
      [3, 2, 5]]
    results = SaddlePoints matrix
    expect(results.sort()).toEqual [{row: 3, column: 3}]

  xit 'can identify saddle points in a non square matrix', ->
    matrix = [
      [3, 1, 3]
      [3, 2, 4]]
    results = SaddlePoints matrix
    expect(results.sort()).toEqual [{row: 1, column: 1}
                                    {row: 1, column: 3}]

  xit 'can identify that saddle points in a single column matrix are those with the minimum value', ->
    matrix = [
      [2]
      [1]
      [4]
      [1]]
    results = SaddlePoints matrix
    expect(results.sort()).toEqual [{row: 2, column: 1}
                                    {row: 4, column: 1}] 
  
  xit 'can identify that saddle points in a single row matrix are those with the maximum value', ->
    matrix = [[2, 5, 3, 5]]
    results = SaddlePoints matrix
    expect(results.sort()).toEqual [{row: 1, column: 2}
                                    {row: 1, column: 4}]
                            