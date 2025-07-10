Change = require './change'

describe 'Change', =>
  it 'change for 1 cent', =>
    results = Change.findFewestCoins [1, 5, 10, 25], 1
    expect(results).toEqual [1]

  xit 'single coin change', =>
    results = Change.findFewestCoins [1, 5, 10, 25, 100], 25
    expect(results).toEqual [25]

  xit 'multiple coin change', =>
    results = Change.findFewestCoins [1, 5, 10, 25, 100], 15
    expect(results).toEqual [5, 10]

  xit 'change with Lilliputian Coins', =>
    results = Change.findFewestCoins [1, 4, 15, 20, 50], 23
    expect(results).toEqual [4, 4, 15]

  xit 'change with Lower Elbonia Coins', =>
    results = Change.findFewestCoins [1, 5, 10, 21, 25], 63
    expect(results).toEqual [21, 21, 21]

  xit 'large target values', =>
    results = Change.findFewestCoins [1, 2, 5, 10, 20, 50, 100], 999
    expect(results).toEqual [
      2, 2, 5, 20, 20, 50, 100, 100, 100, 100, 100, 100, 100, 100, 100,
    ]

  xit 'possible change without unit coins available', =>
    results = Change.findFewestCoins [2, 5, 10, 20, 50], 21
    expect(results).toEqual [2, 2, 2, 5, 10]

  xit 'another possible change without unit coins available', =>
    results = Change.findFewestCoins [4, 5], 27
    expect(results).toEqual [4, 4, 4, 5, 5, 5]

  xit 'a greedy approach is not optimal', =>
    results = Change.findFewestCoins [1, 10, 11], 20
    expect(results).toEqual [10, 10]

  xit 'no coins make 0 change', =>
    results = Change.findFewestCoins [1, 5, 10, 21, 25], 0
    expect(results).toEqual []

  xit 'error testing for change smaller than the smallest of coins', =>
    expect ->
        Change.findFewestCoins [5, 10], 3
    .toThrow new Error "can't make target with given coins"

  xit 'error testing if no combination can add up to target', =>
    expect ->
      Change.findFewestCoins [5, 10], 94
    .toThrow new Error "can't make target with given coins"

  xit 'cannot find negative change values', =>
    expect ->
      Change.findFewestCoins [1, 2, 5], -5
    .toThrow new Error "target can't be negative"
