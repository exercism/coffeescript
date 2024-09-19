Knapsack = require './knapsack'

describe 'Knapsack', ->
  it 'no items', ->
    input = {
      maximumWeight: 100,
      items: []
    }
    expect(Knapsack.maximumValue input).toEqual 0

  xit 'one item, too heavy', ->
    input = {
      maximumWeight: 10,
      items: [{ weight: 100, value: 1 }]
    }
    expect(Knapsack.maximumValue input).toEqual 0

  xit 'five items (cannot be greedy by weight)', ->
    input = {
      maximumWeight: 10,
      items: [
        { weight: 2, value: 5 },
        { weight: 2, value: 5 },
        { weight: 2, value: 5 },
        { weight: 2, value: 5 },
        { weight: 10, value: 21 }
      ]
    }
    expect(Knapsack.maximumValue input).toEqual 21

  xit 'five items (cannot be greedy by value)', ->
    input = {
      maximumWeight: 10,
      items: [
        { weight: 2, value: 20 },
        { weight: 2, value: 20 },
        { weight: 2, value: 20 },
        { weight: 2, value: 20 },
        { weight: 10, value: 50 }
      ]
    }
    expect(Knapsack.maximumValue input).toEqual 80

  xit 'example knapsack', ->
    input = {
      maximumWeight: 10,
      items: [
        { weight: 5, value: 10 },
        { weight: 4, value: 40 },
        { weight: 6, value: 30 },
        { weight: 4, value: 50 }
      ]
    }
    expect(Knapsack.maximumValue input).toEqual 90

  xit '8 items', ->
    input = {
      maximumWeight: 104,
      items: [
        { weight: 25, value: 350 },
        { weight: 35, value: 400 },
        { weight: 45, value: 450 },
        { weight: 5, value: 20 },
        { weight: 25, value: 70 },
        { weight: 3, value: 8 },
        { weight: 2, value: 5 },
        { weight: 2, value: 5 }
      ]
    }
    expect(Knapsack.maximumValue input).toEqual 900

  xit '15 items', ->
    input = {
      maximumWeight: 750,
      items: [
        { weight: 70, value: 135 },
        { weight: 73, value: 139 },
        { weight: 77, value: 149 },
        { weight: 80, value: 150 },
        { weight: 82, value: 156 },
        { weight: 87, value: 163 },
        { weight: 90, value: 173 },
        { weight: 94, value: 184 },
        { weight: 98, value: 192 },
        { weight: 106, value: 201 },
        { weight: 110, value: 210 },
        { weight: 113, value: 214 },
        { weight: 115, value: 221 },
        { weight: 118, value: 229 },
        { weight: 120, value: 240 }
      ]
    }
    expect(Knapsack.maximumValue input).toEqual 1458
