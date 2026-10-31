# These tests are auto-generated with test data from:
# https://github.com/exercism/problem-specifications/blob/main/exercises/binary-search/canonical-data.json
# File last updated on 2026-10-31T19:04:11+00:00

BinarySearch = require './binary-search'
TracedArray = require './traced-array'

describe "Binary Search", ->
  it "finds a value in an array with one element", ->
    array = new TracedArray 6

    search = new BinarySearch array
    expect(search.find 6).toEqual 0
    expect(array.accessCount).toEqual 1

  xit "finds a value in the middle of an array", ->
    array = new TracedArray 1, 3, 4, 6, 8, 9, 11

    search = new BinarySearch array
    expect(search.find 6).toEqual 3
    expect(array.accessCount).toEqual 1

  xit "finds a value at the beginning of an array", ->
    array = new TracedArray 1, 3, 4, 6, 8, 9, 11

    search = new BinarySearch array
    expect(search.find 1).toEqual 0
    expect(array.accessCount).toEqual 3

  xit "finds a value at the end of an array", ->
    array = new TracedArray 1, 3, 4, 6, 8, 9, 11

    search = new BinarySearch array
    expect(search.find 11).toEqual 6
    expect(array.accessCount).toEqual 3

  xit "finds a value in an array of odd length", ->
    array = new TracedArray 1, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 634

    search = new BinarySearch array
    expect(search.find 144).toEqual 9
    expect(array.accessCount).toEqual 2

  xit "finds a value in an array of even length", ->
    array = new TracedArray 1, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377

    search = new BinarySearch array
    expect(search.find 21).toEqual 5
    expect(array.accessCount).toEqual 1

  xit "identifies that a value is not included in the array", ->
    array = new TracedArray 1, 3, 4, 6, 8, 9, 11

    search = new BinarySearch array
    expect(-> search.find 7).toThrow new Error "value not in array"

  xit "a value smaller than the array's smallest value is not found", ->
    array = new TracedArray 1, 3, 4, 6, 8, 9, 11

    search = new BinarySearch array
    expect(-> search.find 0).toThrow new Error "value not in array"

  xit "a value larger than the array's largest value is not found", ->
    array = new TracedArray 1, 3, 4, 6, 8, 9, 11

    search = new BinarySearch array
    expect(-> search.find 13).toThrow new Error "value not in array"

  xit "nothing is found in an empty array", ->
    array = new TracedArray

    search = new BinarySearch array
    expect(-> search.find 1).toThrow new Error "value not in array"

  xit "nothing is found when the left and right bounds cross", ->
    array = new TracedArray 1, 2

    search = new BinarySearch array
    expect(-> search.find 0).toThrow new Error "value not in array"
