class Microblog
  @truncate: (phrase) ->
    Array.from phrase
         .slice 0, 5
         .join ''

module.exports = Microblog
