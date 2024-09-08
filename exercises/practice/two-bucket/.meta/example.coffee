class Bucket
  constructor: (@name, @size) ->
    @amount = 0

  isFull: -> @amount is @size
  isEmpty: -> @amount is 0
  available: -> @size - @amount

  fill: -> @amount = @size
  empty: -> @amount = 0

  pourInto: (other) ->
    quantity = Math.min @amount, other.available()
    @amount -= quantity
    other.amount += quantity


gcd = (a, b) -> if b == 0 then a else gcd(b, a % b)


class TwoBucket
  constructor: ({bucketOne, bucketTwo, @goal, startBucket}) ->
    # validation
    throw new Error 'impossible' if @goal > Math.max(bucketOne, bucketTwo)
    g = gcd(bucketOne, bucketTwo)
    throw new Error 'impossible' if @goal % g isnt 0

    @first = new Bucket("one", bucketOne)
    @second = new Bucket("two", bucketTwo)
    if startBucket == "two"
      [@first, @second] = [@second, @first]

  measure: ->
    moves = 0

    @first.fill()
    moves++

    if @second.size == @goal
      @second.fill()
      moves++

    loop
      return @result(@first, @second, moves) if @first.amount == @goal
      return @result(@second, @first, moves) if @second.amount == @goal

      if @first.isEmpty()
        @first.fill()
      else if @second.isFull()
        @second.empty()
      else
        @first.pourInto @second

      moves++

  result: (winner, loser, moves) ->
    { moves: moves, goalBucket: winner.name, otherBucket: loser.amount }


module.exports = TwoBucket
