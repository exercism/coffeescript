WordProblem = require './wordy'

describe 'Word Problem', ->

  it 'just a number', ->
    problem = new WordProblem('What is 5?')
    expect(problem.answer()).toEqual 5

  xit 'addition', ->
    problem = new WordProblem('What is 1 plus 1?')
    expect(problem.answer()).toEqual 2

  xit 'more addition', ->
    problem = new WordProblem('What is 53 plus 2?')
    expect(problem.answer()).toEqual 55

  xit 'addition with negative numbers', ->
    problem = new WordProblem('What is -1 plus -10?')
    expect(problem.answer()).toEqual -11

  xit 'large addition', ->
    problem = new WordProblem('What is 123 plus 45678?')
    expect(problem.answer()).toEqual 45801

  xit 'subtraction', ->
    problem = new WordProblem('What is 4 minus -12?')
    expect(problem.answer()).toEqual 16

  xit 'multiplication', ->
    problem = new WordProblem('What is -3 multiplied by 25?')
    expect(problem.answer()).toEqual -75

  xit 'division', ->
    problem = new WordProblem('What is 33 divided by -3?')
    expect(problem.answer()).toEqual -11

  xit 'multiple additions', ->
    problem = new WordProblem('What is 1 plus 1 plus 1?')
    expect(problem.answer()).toEqual 3

  xit 'addition and subtraction', ->
    problem = new WordProblem('What is 1 plus 5 minus -2?')
    expect(problem.answer()).toEqual 8

  xit 'multiple subtraction', ->
    problem = new WordProblem('What is 20 minus 4 minus 13?')
    expect(problem.answer()).toEqual 3

  xit 'subtraction then addition', ->
    problem = new WordProblem('What is 17 minus 6 plus 3?')
    expect(problem.answer()).toEqual 14

  xit 'multiple multiplication', ->
    problem = new WordProblem('What is 2 multiplied by -2 multiplied by 3?')
    expect(problem.answer()).toEqual -12

  xit 'addition and multiplication', ->
    problem = new WordProblem('What is -3 plus 7 multiplied by -2?')
    expect(problem.answer()).toEqual -8

  xit 'multiple division', ->
    problem = new WordProblem('What is -12 divided by 2 divided by -3?')
    expect(problem.answer()).toEqual 2

  xit 'unknown operation', ->
    problem = new WordProblem('What is 52 cubed?')
    expect(-> problem.answer()).toThrow(problem.ERROR.unknownOperation)

  xit 'Non math question', ->
    problem = new WordProblem('Who is the president of the United States?')
    expect(-> problem.answer()).toThrow(problem.ERROR.unknownOperation)

  xit 'reject problem missing an operand', ->
    problem = new WordProblem('What is 1 plus?')
    expect(-> problem.answer()).toThrow(problem.ERROR.syntaxError)

  xit 'reject problem with no operands or operators', ->
    problem = new WordProblem('What is?')
    expect(-> problem.answer()).toThrow(problem.ERROR.syntaxError)

  xit 'reject two operations in a row', ->
    problem = new WordProblem('What is 1 plus plus 2?')
    expect(-> problem.answer()).toThrow(problem.ERROR.syntaxError)

  xit 'reject two numbers in a row', ->
    problem = new WordProblem('What is 1 plus 2 1?')
    expect(-> problem.answer()).toThrow(problem.ERROR.syntaxError)

  xit 'reject postfix notation', ->
    problem = new WordProblem('What is 1 2 plus?')
    expect(-> problem.answer()).toThrow(problem.ERROR.syntaxError)

  xit 'reject prefix notation', ->
    problem = new WordProblem('What is plus 1 2?')
    expect(-> problem.answer()).toThrow(problem.ERROR.syntaxError)
