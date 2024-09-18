weekdays = ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday']
meetup = ({year, month, week, dayofweek}) ->
  # javascript uses 0-based months
  # initialize the date's time to 12:00:00 to avoid daylight saving problems
  date = new Date year, month - 1, 1, 12

  days = Array.from({length: 7}, -> [])

  while date.getMonth() == month - 1
    days[date.getDay()].push new Date date
    date.setDate (date.getDate() + 1)

  dayIdx = weekdays.indexOf dayofweek
  targetDays = days[dayIdx]

  wantedDay = switch week
    when 'first'  then targetDays.at 0
    when 'second' then targetDays.at 1
    when 'third'  then targetDays.at 2
    when 'fourth' then targetDays.at 3
    when 'last'   then targetDays.at -1
    when 'teenth' then targetDays.find (d) -> d.getDate() >= 13

  wantedDay.toISOString().replace /T.+/, ''

module.exports = meetup
