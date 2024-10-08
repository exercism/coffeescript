class SumOfMultiples
  @sum: (factors, limit) ->
    multiples = []
    for i in [1..limit - 1]
      for factor in factors
        if i % factor is 0
          multiples.push i
          break
    multiples.reduce (a, b) ->
      a + b
    , 0

module.exports = SumOfMultiples
