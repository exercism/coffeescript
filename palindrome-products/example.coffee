class Palindromes
  constructor: (bounds) ->
    @max = bounds['maxFactor']
    @min = bounds['minFactor'] || 1
    @range = [@min..@max]
    @palindromes = @generate()

  generate: ->
    palindromes = []
    for i in [@min..@max]
      for j in [@min..@max]
        product = (i * j)
        palindromes.push(product) if @isPalindrome(product)
    return palindromes

  uniqueFactors: (value) =>
    starting = @findFactors(value)
    sorted = starting.map (pair) -> pair.sort()
    return sorted.unique()

  findFactors: (value) ->
    results = []
    for i in [1..value]
      results.push([i, (value / i)]) if value % i == 0
    return results

  largest: =>
    biggest = @generate().reduce (a,b) -> Math.max a, b
    low = @min
    high = @max
    return {
      value: biggest,
      factors: @uniqueFactors(biggest).filter (pair) -> 
        pair.every (factor) -> low <= factor <= high
    }

  smallest: =>
    littlest = @generate().reduce (a,b) -> Math.min a, b
    low = @min
    high = @max
    return {
      value: littlest,
      factors: @uniqueFactors(littlest).filter (pair) -> 
        pair.every (factor) -> low <= factor <= high
    }

  isPalindrome: (number) ->
    digits = number.toString().split('')
    size = digits.length
    half1 = digits[0..(size / 2)]
    half2 = digits[(size / 2)..size - 1]
    half1.pop() if half1.length > half2.length
    return arrayEqual(half1, half2.reverse())

Array::unique = ->
  output = {}
  output[@[key]] = @[key] for key in [0...@length]
  value for key, value of output

arrayEqual = (a, b) ->
  a.length is b.length and a.every (elem, i) -> elem is b[i]

module.exports = Palindromes