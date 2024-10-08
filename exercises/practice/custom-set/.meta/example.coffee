class CustomSet
  constructor: (values) ->
    values.sort()
    @values = values.filter (value, index) ->
      values.indexOf(value) is index

  empty: ->
    @values.length == 0

  contains: (value) ->
    @values.indexOf(value) != -1

  subset: (other) ->
    @values.every (item) -> other.contains item

  disjoint: (other) ->
    @values.every (item) -> !other.contains item

  equal: (other) ->
    if @values.length != other.values.length
      return false
    else

    for elt, i in @values
        return false if elt != other.values[i]
    true

  add: (value) ->
    if !(@contains value)
      @values.push value
      @values.sort()

  intersection: (other) ->
    new CustomSet @values.filter (item) -> other.contains item

  difference: (other) ->
    new CustomSet @values.filter (item) -> !other.contains item
  
  union: (other) ->
    new CustomSet @values.concat other.values

module.exports = CustomSet
