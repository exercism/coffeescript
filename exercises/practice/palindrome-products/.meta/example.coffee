class PalindromeProducts
  constructor: (bounds) ->
    @max = bounds['maxFactor']
    @min = bounds['minFactor'] || 1

  largest: =>
    throw new Error("min must be <= max") if @min > @max
    resultProducts = []
    result = null
    for x in [@max..@min]
      wasBigger = false
      for y in [(x - 1)..@max]
        product = x * y
        if resultProducts is [] or product > result
          wasBigger = true
          if @isPalindrome(product)
            result = product
            resultProducts = [[x, y]]
        else if product == result
          resultProducts.push([x, y])
      unless wasBigger
        break
    return {
      value: result,
      factors: resultProducts
    }
    

  smallest: =>
    throw new Error("min must be <= max") if @min > @max
    resultProducts = []
    result = null
    for x in [@min..@max]
      wasSmaller = false
      for y in [x..@max]
        product = x * y
        if result is null or product < result
          wasSmaller = true
          if @isPalindrome(product)
            result = product
            resultProducts = [[x, y]]
        else if product is result
          resultProducts.push([x, y])
      unless wasSmaller
        break
    return {
      value: result,
      factors: resultProducts
    }

  isPalindrome: (number) -> 
    number.toString() is number.toString().split('').reverse().join('')

module.exports = PalindromeProducts
