class ResistorColorDuo
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

  @value: ([first, second]) ->
   10 * @colorBands.indexOf(first) + @colorBands.indexOf(second)

module.exports = ResistorColorDuo
