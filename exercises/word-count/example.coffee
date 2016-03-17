module.exports = class Words
  constructor: (input) ->
    @words = input.toLowerCase().match(/\b[a-z0-9]+\b/g)

  count: ->
    counts = {}
    for word in @words
      counts[word] = if counts[word] then counts[word] + 1 else 1
    counts
