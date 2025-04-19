class Diamond
  @rows: (letter) ->
    return 'A' if letter is 'A'

    start = 'A'.charCodeAt 0 
    end = letter.charCodeAt 0
    size = end - start + 1
    diamond = []

    # Down to middle of diamond
    for i in [0...size]
      currentChar = String.fromCharCode start + i 
      outer = ' '.repeat size - 1 - i
      if i is 0
        line = outer + currentChar + outer
      else
        inner = ' '.repeat 2 * i - 1
        line = outer + currentChar + inner + currentChar + outer
      diamond.push line

    # flip the diamond to make the bottom half
    for i in [size-2..0]
      diamond.push diamond[i]

    diamond.join '\n'

module.exports = Diamond
