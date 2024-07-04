class MatchingBrackets
  @isPaired (value) ->
    stack = []
    for char in value
      if char in ['[', '{', '(']
        stack.push char
      else if char in [']', '}', ')']
        return false if stack.length is 0

        last = stack.pop()
        return false if last == '[' and char != ']'
        return false if last == '{' and char != '}'
        return false if last == '(' and char != ')'

    stack.length == 0


module.exports = MatchingBrackets
