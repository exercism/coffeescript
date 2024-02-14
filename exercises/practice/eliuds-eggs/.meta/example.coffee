class EliudsEggs
  @eggCount: (displayValue) ->
    eggs = 0
    while displayValue != 0
      eggs += displayValue % 2
      displayValue //= 2
    eggs

module.exports = EliudsEggs
