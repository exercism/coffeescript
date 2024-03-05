class CircularBuffer
  constructor: (@capacity) ->
    @data = []

  write: (value) ->
    if @data.length == @capacity
      throw new Error "full buffer"
    @data.push value

  read: () ->
    if !@data.length
      throw new Error "empty buffer"
    [head, @data...] = @data
    head

  overwrite: (value) ->
    if @data.length == @capacity
      @read()
    @write value

  clear: () ->
    @data = []

module.exports = CircularBuffer
