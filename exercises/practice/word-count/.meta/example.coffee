module.exports = class Words
  constructor: (input) ->
    @input = input.trim().toLowerCase().match(/\w+('\w+)?/g);

  count: ->
    counts = {}
    for word in @input
      counts[word] = if counts[word] then counts[word] + 1 else 1
    counts
