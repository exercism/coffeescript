class CollatzConjecture
  @steps: (number) ->
    if number <= 0
      throw new Error('Only positive integers are allowed')
    
    step = 0
    while number != 1
      if number % 2 == 0
        number /= 2
      else
        number = 3 * number + 1
        step += 1
    step

module.exports = CollatzConjecture
