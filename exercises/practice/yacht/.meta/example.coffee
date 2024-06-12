class Yacht
  @score: (dice, category) ->
    if category == 'yacht' and unique(dice).length == 1
      return 50
    else if category == 'ones'
      return count(dice, 1) * 1
    else if category == 'twos'
      return count(dice, 2) * 2
    else if category == 'threes'
      return count(dice, 3) * 3
    else if category == 'fours'
      return count(dice, 4) * 4
    else if category == 'fives'
      return count(dice, 5) * 5
    else if category == 'sixes'
      return count(dice, 6) * 6
    else if category == 'full house'
      counts = {}
      for val in dice
          counts[val] = 0 unless counts[val]
          counts[val] += 1
      if Object.values(counts).sort().toString() == '2,3'
          return dice.reduce (a, b) ->
              a + b
            , 0
    else if category == 'four of a kind'
      if count(dice, 1) >= 4
        return 4 * 1
      if count(dice, 2) >= 4
        return 4 * 2
      if count(dice, 3) >= 4
        return 4 * 3
      if count(dice, 4) >= 4
        return 4 * 4
      if count(dice, 5) >= 4
        return 4 * 5
      if count(dice, 6) >= 4
        return 4 * 6
    else if category == 'little straight'
      sorted = unique(dice).sort()
      if isEqual(sorted, [1, 2, 3, 4, 5]) 
        return 30
    else if category == 'big straight'
      sorted = unique(dice).sort()
      if isEqual(sorted, [2, 3, 4, 5, 6])
        return 30
    else if category == 'choice'
      return dice.reduce (a, b) ->
          a + b
        , 0
    return 0

unique = (arr) ->
  result = []
  for element in arr
    unless element in result
      result.push element
  result

count = (arr, element) ->
  matches = arr.filter (x) -> x == element
  matches.length

isEqual = (arr1, arr2) ->
  arr1.sort().toString() == arr2.sort().toString()

module.exports = Yacht

