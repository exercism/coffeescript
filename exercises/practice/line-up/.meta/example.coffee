class Lineup
  @format: (name, number) ->
    suffix = @getSuffix number
    "#{name}, you are the #{number}#{suffix} customer we serve today. Thank you!"

  @getSuffix: (number) ->
    mod100 = number % 100
    mod10 = number % 10
    if mod100 in [11, 12, 13]
        'th'
    else if mod10 is 1
        'st'
    else if mod10 is 2
        'nd'
    else if mod10 is 3
        'rd'
    else
        'th'

module.exports = Lineup
