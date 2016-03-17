WordProblem = require './wordy'

describe 'Word Problem', ->

  it 'add 1', ->
    problem = new WordProblem('What is 1 plus 1?')
    expect(problem.answer()).toEqual 2

  xit 'add 2', ->
    problem = new WordProblem('What is 53 plus 2?')
    expect(problem.answer()).toEqual 55

  xit 'add negative numbers', ->
    problem = new WordProblem('What is -1 plus -10?')
    expect(problem.answer()).toEqual -11

  xit 'add more digits', ->
    problem = new WordProblem('What is 123 plus 45678?')
    expect(problem.answer()).toEqual 45801

  xit 'subtract', ->
    problem = new WordProblem('What is 4 minus -12?')
    expect(problem.answer()).toEqual 16

  xit 'multiply', ->
    problem = new WordProblem('What is -3 multiplied by 25?')
    expect(problem.answer()).toEqual -75

  xit 'divide', ->
    problem = new WordProblem('What is 33 divided by -3?')
    expect(problem.answer()).toEqual -11

  xit 'add twice', ->
    problem = new WordProblem('What is 1 plus 1 plus 1?')
    expect(problem.answer()).toEqual 3

  xit 'add then subtract', ->
    problem = new WordProblem('What is 1 plus 5 minus -2?')
    expect(problem.answer()).toEqual 8

  xit 'subtract twice', ->
    problem = new WordProblem('What is 20 minus 4 minus 13?')
    expect(problem.answer()).toEqual 3

  xit 'subtract then add', ->
    problem = new WordProblem('What is 17 minus 6 plus 3?')
    expect(problem.answer()).toEqual 14

  xit 'multiply twice', ->
    problem = new WordProblem('What is 2 multiplied by -2 multiplied by 3?')
    expect(problem.answer()).toEqual -12

  xit 'add then multiply', ->
    problem = new WordProblem('What is -3 plus 7 multiplied by -2?')
    expect(problem.answer()).toEqual -8

  xit 'divide twice', ->
    problem = new WordProblem('What is -12 divided by 2 divided by -3?')
    expect(problem.answer()).toEqual 2

  xit 'too advanced', ->
    problem = new WordProblem('What is 53 cubed?')
    expect(-> problem.answer()).toThrow(problem.ERROR.tooComplicated)

  xit 'irrelevant', ->
    problem = new WordProblem('Who is the president of the United States?')
    expect(-> problem.answer()).toThrow(problem.ERROR.tooComplicated)
