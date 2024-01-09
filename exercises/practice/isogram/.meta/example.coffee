class Isogram
  @isIsogram: (phrase) ->
    seen = {}
    for char in phrase.toLowerCase()
        cp = char.charCodeAt(0)
        if cp >= 97 && cp <= 122
            if char of seen
                return false

            seen[char] = true
    true

module.exports = Isogram
