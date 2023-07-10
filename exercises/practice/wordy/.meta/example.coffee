class WordProblem
  constructor: (@question) ->
    @tokens = []

  BINARY_OPERATORS:
    'plus':          (l, r) -> l + r
    'minus':         (l, r) -> l - r
    'multiplied': (l, r) -> l * r
    'divided':    (l, r) -> l / r

  ERROR:
    unknownOperation: new Error("Unknown operation")
    syntaxError:    new Error("Syntax error")

  answer: ->
    @parse()
    @evaluate()

  parse: ->
    throw @ERROR.unknownOperation unless @question.slice(0, 7) is 'What is'
    @tokens = @question.slice(0, -1)
    @tokens = @tokens.split(' ')
    @tokens = @tokens.slice(2)
    @tokens = @tokens.reduce (acc, item) ->
      isBy = ["multiplied", "divided"].includes(acc[acc.length - 1]) and item is "by"
      if isNaN(item) is isNaN(acc[acc.length - 1]) and not isBy
        throw WordProblem::ERROR.syntaxError
      unless isBy
        acc.push(item)
      acc
    , []
    
  evaluate: ->
    throw @ERROR.syntaxError if isNaN(@tokens[0])
    sum = parseInt(@tokens[0])
    for item, index in @tokens.slice(1)
      throw @ERROR.unknownOperation if isNaN(item) and not @BINARY_OPERATORS.hasOwnProperty(item)
      if @BINARY_OPERATORS.hasOwnProperty(item)
        throw @ERROR.syntaxError if isNaN(@tokens[index + 2])
        sum = @BINARY_OPERATORS[item](sum, parseInt(@tokens[index + 2]))
    sum

module.exports = WordProblem
