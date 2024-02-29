class Acronym
  @abbreviate: (phrase) ->
    phrase
      .replace "'", ""
      .match /^[A-Z]|(?<=[^A-Z])[A-Z]|\b[a-z]/g
      .join ""
      .toUpperCase()

module.exports = Acronym
