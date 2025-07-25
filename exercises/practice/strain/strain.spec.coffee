Strain = require './strain'

describe 'Strain', ->
  alwaysTrue = (_) -> true
  alwaysFalse = (_) -> false
  isEven = (n) -> n % 2 == 0
  isOdd = (n) -> n % 2 == 1
  containsFive = (lst) -> 5 in lst
  startsWithZ = (str) -> str[0] == 'z'

  it 'keep on empty list returns empty list', ->
    data = []
    result = Strain.keep(data, alwaysTrue)
    expected = []
    expect(result).toEqual expected

  xit 'keeps everything', ->
    data = [1, 3, 5]
    result = Strain.keep(data, alwaysTrue)
    expected = [1, 3, 5]
    expect(result).toEqual expected

  xit 'keeps nothing', ->
    data = [1, 3, 5]
    result = Strain.keep(data, alwaysFalse)
    expected = []
    expect(result).toEqual expected

  xit 'keeps first and last', ->
    data = [1, 2, 3]
    result = Strain.keep(data, isOdd)
    expected = [1, 3]
    expect(result).toEqual expected

  xit 'keeps neither first nor last', ->
    data = [1, 2, 3]
    result = Strain.keep(data, isEven)
    expected = [2]
    expect(result).toEqual expected

  xit 'keeps strings', ->
    data = ["apple", "zebra", "banana", "zombies", "cherimoya", "zealot"]
    result = Strain.keep(data, startsWithZ)
    expected = ["zebra", "zombies", "zealot"]
    expect(result).toEqual expected

  xit 'keeps lists', ->
    data = [
      [1, 2, 3]
      [5, 5, 5]
      [5, 1, 2]
      [2, 1, 2]
      [1, 5, 2]
      [2, 2, 1]
      [1, 2, 5]
    ]
    result = Strain.keep(data, containsFive)
    expected = [
      [5, 5, 5]
      [5, 1, 2]
      [1, 5, 2]
      [1, 2, 5]
    ]
    expect(result).toEqual expected

  xit 'discard on empty list returns empty list', ->
    data = []
    result = Strain.discard(data, alwaysTrue)
    expected = []
    expect(result).toEqual expected

  xit 'discards everything', ->
    data = [1, 3, 5]
    result = Strain.discard(data, alwaysTrue)
    expected = []
    expect(result).toEqual expected

  xit 'discards nothing', ->
    data = [1, 3, 5]
    result = Strain.discard(data, alwaysFalse)
    expected = [1, 3, 5]
    expect(result).toEqual expected

  xit 'discards first and last', ->
    data = [1, 2, 3]
    result = Strain.discard(data, isOdd)
    expected = [2]
    expect(result).toEqual expected

  xit 'discards neither first or last', ->
    data = [1, 2, 3]
    result = Strain.discard(data, isEven)
    expected = [1, 3]
    expect(result).toEqual expected

  xit 'discards strings', ->
    data = ["apple", "zebra", "banana", "zombies", "cherimoya", "zealot"]
    result = Strain.discard(data, startsWithZ)
    expected = ["apple", "banana", "cherimoya"]
    expect(result).toEqual expected

  xit 'discards lists', ->
    data = [
      [1, 2, 3]
      [5, 5, 5]
      [5, 1, 2]
      [2, 1, 2]
      [1, 5, 2]
      [2, 2, 1]
      [1, 2, 5]
    ]
    result = Strain.discard(data, containsFive)
    expected = [
      [1, 2, 3]
      [2, 1, 2]
      [2, 2, 1]
    ]
    expect(result).toEqual expected
