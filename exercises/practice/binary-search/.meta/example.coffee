class BinarySearch
  constructor: (@array) ->

  find: (value) ->
    start = 0
    end = @array.length - 1
    while start <= end
        mid = (start + end) // 2
        item = @array.get mid
        if value == item
            return mid
        else if value <= item
            end = mid - 1
        else if value >= item
            start = mid + 1

    throw new Error 'value not in array'

module.exports = BinarySearch
