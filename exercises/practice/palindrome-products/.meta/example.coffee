class PalindromeProducts
  constructor: (bounds) ->
    @max = bounds['maxFactor']
    @min = bounds['minFactor'] || 1

  largest: =>
    throw new Error("min must be <= max") if @min > @max
    result_products = []
    result = null
    for x in [@max..@min]
      was_bigger = false
      for y in [(x - 1)..@max]
        product = x * y
        if result_products is [] or product > result
          was_bigger = true
          if @isPalindrome(product)
            result = product
            result_products = [[x, y]]
        else if product == result
          result_products.push([x, y])
      unless was_bigger
        break
    return {
      value: result,
      factors: result_products
    }
    

  smallest: =>
    throw new Error("min must be <= max") if @min > @max
    result_products = []
    result = null
    for x in [@min..@max]
      was_smaller = false
      for y in [x..@max]
        product = x * y
        if result is null or product < result
          was_smaller = true
          if @isPalindrome(product)
            result = product
            result_products = [[x, y]]
        else if product is result
          result_products.push([x, y])
      unless was_smaller
        break
    return {
      value: result,
      factors: result_products
    }

  isPalindrome: (number) -> 
    number.toString() is number.toString().split('').reverse().join('')

module.exports = PalindromeProducts
