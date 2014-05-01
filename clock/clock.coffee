class Clock

  @at: (hour, minute=0) =>
    new Clock(hour, minute)

  constructor: (@hour, @minute) ->
    @to_s = "#{clean(@hour)}:#{clean(@minute)}"

  clean = (num) ->
    str = num.toString()
    if str.length < 2
      '0' + str
    else
      str


module.exports = Clock
