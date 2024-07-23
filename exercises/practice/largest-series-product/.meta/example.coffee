class LargestSeriesProduct
  @largestProduct: (digits, span) ->
    if span < 0
      throw new Error 'span must not be negative'
    if span > digits.length
      throw new Error 'span must be smaller than string length'
    if digits.match(/[^0-9]/)
      throw new Error 'digits input must only contain digits'

    max = 0
    for i in [0...digits.length - span + 1]
      product = 1
      for j in [0...span]
        product *= Number digits[i + j]
      if product > max
        max = product
    max

module.exports = LargestSeriesProduct
