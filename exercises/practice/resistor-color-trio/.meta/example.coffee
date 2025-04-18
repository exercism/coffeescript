class ResistorColorTrio
  @label: ([tens, ones, exp]) ->
    value = (@colorBands.indexOf(ones) + 10 * @colorBands.indexOf(tens)) * 10 ** @colorBands.indexOf(exp)

    if value < 1e3
      "#{value} ohms"
    else if value < 1e6
      "#{value / 1e3} kiloohms"
    else if value < 1e9
      "#{value / 1e6} megaohms"
    else
      "#{value / 1e9} gigaohms"

  @colorBands: [
    "black"
    "brown"
    "red"
    "orange"
    "yellow"
    "green"
    "blue"
    "violet"
    "grey"
    "white"
  ]

module.exports = ResistorColorTrio
