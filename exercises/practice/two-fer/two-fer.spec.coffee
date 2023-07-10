TwoFer = require './two-fer'

describe 'TwoFer', ->
  it 'no name give', ->
    expect(TwoFer.two_fer()).toEqual("One for you, one for me.")

  xit 'a name given', ->
    expect(TwoFer.two_fer("Alice")).toEqual("One for Alice, one for me.")

  xit 'another name given', ->
    expect(TwoFer.two_fer("Bob")).toEqual("One for Bob, one for me.")