Strain = require './strain'

describe 'Strain', ->
  alwaysTrue = (_) -> true
  alwaysFalse = (_) -> false
  isEven = (n) -> n % 2 == 0
  isOdd = (n) -> n % 2 == 1
  containsFive = (lst) -> 5 in lst
  startsWithZ = (str) -> str[0] == 'z'

  strain = new Strain()

  it 'keep on empty list returns empty list', ->
    data = []
    result = strain.keep(data, alwaysTrue)
    expected = []
    expect(result).toEqual expected

  it 'keeps everything', ->
    data = [1, 3, 5]
    result = strain.keep(data, alwaysTrue)
    expected = [1, 3, 5]
    expect(result).toEqual expected

  it 'keeps nothing', ->
    data = [1, 3, 5]
    result = strain.keep(data, alwaysFalse)
    expected = []
    expect(result).toEqual expected

  it 'keeps first and last', ->
    data = [1, 2, 3]
    result = strain.keep(data, isOdd)
    expected = [1, 3]
    expect(result).toEqual expected

  it 'keeps neither first nor last', ->
    data = [1, 2, 3]
    result = strain.keep(data, isEven)
    expected = [2]
    expect(result).toEqual expected

  it 'keeps strings', ->
    data = ["apple", "zebra", "banana", "zombies", "cherimoya", "zealot"]
    result = strain.keep(data, startsWithZ)
    expected = ["zebra", "zombies", "zealot"]
    expect(result).toEqual expected

  it 'keeps lists', ->
    data = [
        [1, 2, 3],
        [5, 5, 5],
        [5, 1, 2],
        [2, 1, 2],
        [1, 5, 2],
        [2, 2, 1],
        [1, 2, 5]
    ]
    result = strain.keep(data, containsFive)
    expected = [
        [5, 5, 5],
        [5, 1, 2],
        [1, 5, 2],
        [1, 2, 5]
    ]
    expect(result).toEqual expected

  it 'discard on empty list returns empty list', ->
    data = []
    result = strain.discard(data, alwaysTrue)
    expected = []
    expect(result).toEqual expected

  it 'discards everything', ->
    data = [1, 3, 5]
    result = strain.discard(data, alwaysTrue)
    expected = []
    expect(result).toEqual expected

  it 'discards nothing', ->
    data = [1, 3, 5]
    result = strain.discard(data, alwaysFalse)
    expected = [1, 3, 5]
    expect(result).toEqual expected

  it 'discards first and last', ->
    data = [1, 2, 3]
    result = strain.discard(data, isOdd)
    expected = [2]
    expect(result).toEqual expected

  it 'discards neither first or last', ->
    data = [1, 2, 3]
    result = strain.discard(data, isEven)
    expected = [1, 3]
    expect(result).toEqual expected

  it 'discards strings', ->
    data = ["apple", "zebra", "banana", "zombies", "cherimoya", "zealot"]
    result = strain.discard(data, startsWithZ)
    expected = ["apple", "banana", "cherimoya"]
    expect(result).toEqual expected

  it 'discards lists', ->
    data = [
        [1, 2, 3],
        [5, 5, 5],
        [5, 1, 2],
        [2, 1, 2],
        [1, 5, 2],
        [2, 2, 1],
        [1, 2, 5]
    ]
    result = strain.discard(data, containsFive)
    expected = [
        [1, 2, 3],
        [2, 1, 2],
        [2, 2, 1]
    ]
    expect(result).toEqual expected
