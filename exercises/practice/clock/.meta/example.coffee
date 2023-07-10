class Clock

  @at: (hour, minute=0) =>
    new Clock(hour, minute)

  constructor: (hour, minute = 0) ->
    @hour = hour
    @minute = minute
    @flattenMinutes()
    @flattenHours()

  toString:->
    "#{clean(@hour)}:#{clean(@minute)}"

  plus: (num) ->
    @minute += num
    @flattenMinutes()
    @flattenHours()
    this

  minus: (num) ->
    @minute -= num
    @flattenMinutes()
    @flattenHours()
    this

  flattenMinutes: ->
    while @minute < 0
      @minute = 60 + @minute
      @hour -= 1
    if @minute > 59
      @hour += Math.floor(@minute / 60)
      @minute = @minute % 60

  flattenHours: ->
    while @hour < 0
      @hour = 24 + @hour
    if @hour > 23
      @hour = @hour % 24

  equals: (otherClock) ->
    this.toString() == otherClock.toString()

  clean = (num) ->
    str = num.toString()
    if str.length < 2
      '0' + str
    else
      str

module.exports = Clock
