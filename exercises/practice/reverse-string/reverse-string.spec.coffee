ReverseString = require './reverse-string'

describe 'ReverseString', ->
  it 'An empty string', ->
    reversed = ReverseString.reverse("")
    expect(reversed).toEqual("")

  xit 'A word', ->
    reversed = ReverseString.reverse("robot")
    expect(reversed).toEqual("tobor")

  xit 'A capitalized word', ->
    reversed = ReverseString.reverse("Ramen")
    expect(reversed).toEqual("nemaR")

  xit 'A sentence with punctuation', ->
    reversed = ReverseString.reverse("I'm hungry!")
    expect(reversed).toEqual("!yrgnuh m'I")

  xit 'A palindrome', ->
    reversed = ReverseString.reverse("racecar")
    expect(reversed).toEqual("racecar")

  xit 'An even-sized word', ->
    reversed = ReverseString.reverse("drawer")
    expect(reversed).toEqual("reward")
