class FoodChain
  @chain = [
    { animal: "fly", line: "I don't know why she swallowed the fly. Perhaps she'll die." }
    { animal: "spider", line: "It wriggled and jiggled and tickled inside her." }
    { animal: "bird", line: "How absurd to swallow a bird!" }
    { animal: "cat", line: "Imagine that, to swallow a cat!" }
    { animal: "dog", line: "What a hog, to swallow a dog!" }
    { animal: "goat", line: "Just opened her throat and swallowed a goat!" }
    { animal: "cow", line: "I don't know how she swallowed a cow!" }
    { animal: "horse", line: "She's dead, of course!" }
  ]

  @recite: (startVerse, endVerse) ->
    result = []
    for verse in [startVerse..endVerse]
      lines = []
      {animal, line} = @chain[verse - 1]
      lines.push "I know an old lady who swallowed a #{animal}."
      lines.push line

      if verse is 8
        result.push lines.join("\n")
        continue

      if verse > 1
        for i in [verse - 1..1]
          current = @chain[i]
          previous = @chain[i - 1]
          if i is 2
            lines.push "She swallowed the #{current.animal} to catch the #{previous.animal} that wriggled and jiggled and tickled inside her."
          else
            lines.push "She swallowed the #{current.animal} to catch the #{previous.animal}."
        lines.push "I don't know why she swallowed the fly. Perhaps she'll die."

      if verse < endVerse
        lines.push ""

      result.push lines.join "\n"
    result.join "\n"

  module.exports = FoodChain
