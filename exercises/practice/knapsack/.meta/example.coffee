# Algorithm taken from Wikipedia: https://en.wikipedia.org/wiki/Knapsack_problem

class Knapsack
  @maximumValue: ({maximumWeight, items}) ->
    return 0 if items.length is 0

    m = Array.from({length: items.length + 1}, ->new Array(maximumWeight + 1))
    m[0].fill 0

    for i in [1 .. items.length]
      {weight, value} = items[i - 1]
      for w in [0 .. maximumWeight]
        if weight > w 
          m[i][w] = m[i - 1][w]
        else
          m[i][w] = Math.max m[i - 1][w], m[i - 1][w - weight] + value

    m[items.length][maximumWeight]

module.exports = Knapsack
