class TracedArray
  constructor: (values...) ->
    data = values
    @accessCount = 0

    @get = (index) =>
      @accessCount += 1
      data[index]

    Object.defineProperty @, 'length',
      get: -> data.length

module.exports = TracedArray
