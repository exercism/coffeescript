class Proverb
  @recite: (items) ->
    if items.length == 0
      return ""
    proverb = ""
    for i in [0...items.length - 1]
      proverb += "For want of a #{items[i]} the #{items[i + 1]} was lost.\n"
    proverb += "And all for the want of a #{items[0]}."
    proverb

module.exports = Proverb
