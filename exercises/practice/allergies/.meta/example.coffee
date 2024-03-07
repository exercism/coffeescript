ALLERGENS = [
  "eggs"
  "peanuts"
  "shellfish"
  "strawberries"
  "tomatoes"
  "chocolate"
  "pollen"
  "cats"
]

class Allergies
  constructor: (@score) ->

  allergicTo: (allergen) ->
    @list().some (candidate) -> candidate == allergen

  list: () ->
    ALLERGENS.filter (_, i) => @score & (1 << i)

module.exports = Allergies
