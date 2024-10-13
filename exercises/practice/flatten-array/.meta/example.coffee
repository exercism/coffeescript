class FlattenArray
  @flatten: (values) ->
    values.filter (value) -> value != null and value != undefined
      .reduce (flattened, value) ->
        if Array.isArray value
          flattened.concat FlattenArray.flatten value
        else
          flattened.concat value
      , []

module.exports = FlattenArray
