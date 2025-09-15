TwoBucket = require './two-bucket'

describe 'TwoBucket', ->

  it "Measure using bucket one of size 3 and bucket two of size 5 - start with bucket one", ->
    twoBucket = new TwoBucket({
      bucketOne: 3
      bucketTwo: 5
      goal: 1
      startBucket: "one"
    })
    result = twoBucket.measure()
    expect(result.moves).toEqual(4)
    expect(result.goalBucket).toEqual("one")
    expect(result.otherBucket).toEqual(5)

  xit "Measure using bucket one of size 3 and bucket two of size 5 - start with bucket two", ->
    twoBucket = new TwoBucket({
      bucketOne: 3
      bucketTwo: 5
      goal: 1
      startBucket: "two"
    })
    result = twoBucket.measure()
    expect(result.moves).toEqual(8)
    expect(result.goalBucket).toEqual("two")
    expect(result.otherBucket).toEqual(3)

  xit "Measure using bucket one of size 7 and bucket two of size 11 - start with bucket one", ->
    twoBucket = new TwoBucket({
      bucketOne: 7
      bucketTwo: 11
      goal: 2
      startBucket: "one"
    })
    result = twoBucket.measure()
    expect(result.moves).toEqual(14)
    expect(result.goalBucket).toEqual("one")
    expect(result.otherBucket).toEqual(11)

  xit "Measure using bucket one of size 7 and bucket two of size 11 - start with bucket two", ->
    twoBucket = new TwoBucket({
      bucketOne: 7
      bucketTwo: 11
      goal: 2
      startBucket: "two"
    })
    result = twoBucket.measure()
    expect(result.moves).toEqual(18)
    expect(result.goalBucket).toEqual("two")
    expect(result.otherBucket).toEqual(7)

  xit "Measure one step using bucket one of size 1 and bucket two of size 3 - start with bucket two", ->
    twoBucket = new TwoBucket({
      bucketOne: 1
      bucketTwo: 3
      goal: 3
      startBucket: "two"
    })
    result = twoBucket.measure()
    expect(result.moves).toEqual(1)
    expect(result.goalBucket).toEqual("two")
    expect(result.otherBucket).toEqual(0)

  xit "Measure using bucket one much bigger than bucket two", ->
    twoBucket = new TwoBucket({
      bucketOne: 5
      bucketTwo: 1
      goal: 2
      startBucket: "one"
    })
    result = twoBucket.measure()
    expect(result.moves).toEqual(6)
    expect(result.goalBucket).toEqual("one")
    expect(result.otherBucket).toEqual(1)

  xit "Measure using bucket one much smaller than bucket two", ->
    twoBucket = new TwoBucket({
      bucketOne: 3
      bucketTwo: 15
      goal: 9
      startBucket: "one"
    })
    result = twoBucket.measure()
    expect(result.moves).toEqual(6)
    expect(result.goalBucket).toEqual("two")
    expect(result.otherBucket).toEqual(0)

  xit "Measure using bucket one of size 2 and bucket two of size 3 - start with bucket one and end with bucket two", ->
    twoBucket = new TwoBucket({
      bucketOne: 2
      bucketTwo: 3
      goal: 3
      startBucket: "one"
    })
    result = twoBucket.measure()
    expect(result.moves).toEqual(2)
    expect(result.goalBucket).toEqual("two")
    expect(result.otherBucket).toEqual(2)

  xit "Not possible to reach the goal", ->
    input = {
      bucketOne: 6
      bucketTwo: 15
      goal: 5
      startBucket: "one"
    }
    expect(-> new TwoBucket(input)).toThrow("impossible")

  xit "With the same buckets but a different goal, then it is possible", ->
    twoBucket = new TwoBucket({
      bucketOne: 6
      bucketTwo: 15
      goal: 9
      startBucket: "one"
    })
    result = twoBucket.measure()
    expect(result.moves).toEqual(10)
    expect(result.goalBucket).toEqual("two")
    expect(result.otherBucket).toEqual(0)

  xit "Goal larger than both buckets is impossible", ->
    input = {
      bucketOne: 5
      bucketTwo: 7
      goal: 8
      startBucket: "one"
    }
    expect ->
      new TwoBucket(input)
    .toThrow("impossible")
