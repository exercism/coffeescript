class Matrix
  constructor: (description) ->
    @rows = description.split("\n").map (row) ->
      row.split(" ").map (number) -> +number

  row: (index) ->
    @rows[index - 1]

  column: (index) ->
    @rows.map (row) -> row[index - 1]

module.exports = Matrix
