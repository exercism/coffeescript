class RunLengthEncoding
  @encode: (string) ->
    consecutiveChars = /([\w\s])\1*/g
    string.replace consecutiveChars, (match) ->
      if match.length > 1 then match.length + match[0] else match[0]

  @decode: (string) ->
    countAndChar = /(\d+)(\w|\s)/g
    string.replace countAndChar, (_, count, char) ->
      char.repeat count

module.exports = RunLengthEncoding
