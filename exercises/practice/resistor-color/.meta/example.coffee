class ResistorColor
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

  @colorCode: (color) ->
    @colorBands.indexOf(color)

  @colors: () ->
    @colorBands

module.exports = ResistorColor
