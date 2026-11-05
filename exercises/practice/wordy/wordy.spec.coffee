# These tests are auto-generated with test data from:
# https://github.com/exercism/problem-specifications/blob/main/exercises/wordy/canonical-data.json
# File last updated on 2026-11-05T15:43:23+00:00

Wordy = require './wordy'

describe "Wordy", ->
  it "just a number", ->
    problem = new Wordy "What is 5?"
    expect(problem.answer()).toEqual 5

  xit "just a zero", ->
    problem = new Wordy "What is 0?"
    expect(problem.answer()).toEqual 0

  xit "just a negative number", ->
    problem = new Wordy "What is -123?"
    expect(problem.answer()).toEqual -123

  xit "addition", ->
    problem = new Wordy "What is 1 plus 1?"
    expect(problem.answer()).toEqual 2

  xit "addition with a left hand zero", ->
    problem = new Wordy "What is 0 plus 2?"
    expect(problem.answer()).toEqual 2

  xit "addition with a right hand zero", ->
    problem = new Wordy "What is 3 plus 0?"
    expect(problem.answer()).toEqual 3

  xit "more addition", ->
    problem = new Wordy "What is 53 plus 2?"
    expect(problem.answer()).toEqual 55

  xit "addition with negative numbers", ->
    problem = new Wordy "What is -1 plus -10?"
    expect(problem.answer()).toEqual -11

  xit "large addition", ->
    problem = new Wordy "What is 123 plus 45678?"
    expect(problem.answer()).toEqual 45801

  xit "subtraction", ->
    problem = new Wordy "What is 4 minus -12?"
    expect(problem.answer()).toEqual 16

  xit "multiplication", ->
    problem = new Wordy "What is -3 multiplied by 25?"
    expect(problem.answer()).toEqual -75

  xit "division", ->
    problem = new Wordy "What is 33 divided by -3?"
    expect(problem.answer()).toEqual -11

  xit "multiple additions", ->
    problem = new Wordy "What is 1 plus 1 plus 1?"
    expect(problem.answer()).toEqual 3

  xit "addition and subtraction", ->
    problem = new Wordy "What is 1 plus 5 minus -2?"
    expect(problem.answer()).toEqual 8

  xit "multiple subtraction", ->
    problem = new Wordy "What is 20 minus 4 minus 13?"
    expect(problem.answer()).toEqual 3

  xit "subtraction then addition", ->
    problem = new Wordy "What is 17 minus 6 plus 3?"
    expect(problem.answer()).toEqual 14

  xit "multiple multiplication", ->
    problem = new Wordy "What is 2 multiplied by -2 multiplied by 3?"
    expect(problem.answer()).toEqual -12

  xit "addition and multiplication", ->
    problem = new Wordy "What is -3 plus 7 multiplied by -2?"
    expect(problem.answer()).toEqual -8

  xit "multiple division", ->
    problem = new Wordy "What is -12 divided by 2 divided by -3?"
    expect(problem.answer()).toEqual 2

  xit "unknown operation", ->
    problem = new Wordy "What is 52 cubed?"
    expect(-> problem.answer()).toThrow problem.ERROR.unknownOperation

  xit "Non math question", ->
    problem = new Wordy "Who is the President of the United States?"
    expect(-> problem.answer()).toThrow problem.ERROR.unknownOperation

  xit "reject problem missing an operand", ->
    problem = new Wordy "What is 1 plus?"
    expect(-> problem.answer()).toThrow problem.ERROR.syntaxError

  xit "reject problem with no operands or operators", ->
    problem = new Wordy "What is?"
    expect(-> problem.answer()).toThrow problem.ERROR.syntaxError

  xit "reject two operations in a row", ->
    problem = new Wordy "What is 1 plus plus 2?"
    expect(-> problem.answer()).toThrow problem.ERROR.syntaxError

  xit "reject two numbers in a row", ->
    problem = new Wordy "What is 1 plus 2 1?"
    expect(-> problem.answer()).toThrow problem.ERROR.syntaxError

  xit "reject postfix notation", ->
    problem = new Wordy "What is 1 2 plus?"
    expect(-> problem.answer()).toThrow problem.ERROR.syntaxError

  xit "reject prefix notation", ->
    problem = new Wordy "What is plus 1 2?"
    expect(-> problem.answer()).toThrow problem.ERROR.syntaxError
