class Series
  @slices: (series, sliceLength) ->
    if !series
      throw new Error "series cannot be empty"
    if sliceLength == 0
      throw new Error "slice length cannot be zero"
    if sliceLength < 0
      throw new Error "slice length cannot be negative"
    if sliceLength > series.length
      throw new Error "slice length cannot be greater than series length"


    result = []
    for i in [0..series.length - sliceLength]
      result.push series.substring(i, i + sliceLength)
    result

module.exports = Series
