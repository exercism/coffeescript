class Clock

  constructor -> (@hour) ->

  @at: (hour) ->
    new Clock(hour)

  to_s:
    "08:00"

module.exports = Clock
