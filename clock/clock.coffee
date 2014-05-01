class Clock

  @at: (hour, minute=0) =>
    new Clock(hour, minute)

  constructor: (@hour, @minute) ->

  toString:->
    "#{clean(@hour)}:#{clean(@minute)}"

  plus: (num) ->
    @minute += num
    if @minute > 59
      @hour += Math.floor(@minute / 60)
      @minute = @minute % 60
    if @hour > 23
      @hour = @hour % 24
    this

  minus: (num) ->
    @minute -= num
    while @minute < 0
      @minute = 60 + @minute
      @hour -= 1
    this

  equals: (otherClock) ->
    this.toString() == otherClock.toString()

  clean = (num) ->
    str = num.toString()
    if str.length < 2
      '0' + str
    else
      str


module.exports = Clock
