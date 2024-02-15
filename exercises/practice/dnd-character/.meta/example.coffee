class DndCharacter
  constructor: () ->
    @strength = @ability()
    @dexterity = @ability()
    @constitution = @ability()
    @intelligence = @ability()
    @wisdom = @ability()
    @charisma = @ability()
    @hitpoints = 10 + @modifier @constitution

  modifier: (score) ->
    (score - 10) // 2

  ability: () ->
    rolls = [0,0,0,0]
    .map((a) -> Math.floor(Math.random() * 6) + 1)
    .sort((a, b) -> a - b)[1..]
    .reduce((a, b) -> a + b)

module.exports = DndCharacter
