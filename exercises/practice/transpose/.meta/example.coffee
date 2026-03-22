class Transpose
  @transpose: (text) ->
    return '' unless text

    lines = text.split '\n'
    maxLen = Math.max (line.length for line in lines)...
    padded = lines.map (line) -> line + '\0'.repeat maxLen - line.length

    result = for i in [0...maxLen]
      (row[i] for row in padded).join('').replace(/\0+$/, '').replace(/\0/g, ' ')

    result.join '\n'

module.exports = Transpose
