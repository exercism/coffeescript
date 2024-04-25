GIGASECOND_LENGTH = 1e9

class Gigasecond
  @add: (moment) ->
    new Date(moment.getTime() + (GIGASECOND_LENGTH * 1e3))

module.exports = Gigasecond
