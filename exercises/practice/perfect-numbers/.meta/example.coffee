class PerfectNumbers
  @classify: (number) ->
    if number <= 0
      throw new Error 'Classification is only possible for positive integers.'

    sum = 0
    for i in [1...number]
      if number % i == 0
        sum += i

    if sum < number
      'deficient'
    else if sum > number
      'abundant'
    else
      'perfect'

module.exports = PerfectNumbers
