# these values are the first day of the month that 
# qualifies for the "week", except Last which is a sentinel value
Weeks = {
  First: 1
  Second: 8
  Third: 15
  Fourth: 22
  Teenth: 13
  Last: -1
}

# the javascript weekday number
Weekdays = {
  Sunday: 0
  Monday: 1
  Tuesday: 2
  Wednesday: 3
  Thursday: 4
  Friday: 5
  Saturday: 6
}

meetup = ({year, month, week, dayofweek}) ->
  # Javascript uses 0-based months
  # Set hour to 12 to avoid daylight saving problems
  date = new Date year, month - 1, 1, 12

  if week == Weeks.Last
    # The zeroth day of next month is the last day of this month
    # The last day minus 6 is the start of the last week
    week = new Date(year, month, 0, 12).getDate() - 6

  loop
    d = date.getDate()
    if date.getDay() == dayofweek and d >= week
      return new Date date.getFullYear(), date.getMonth(), d
    date.setDate d + 1

module.exports = {Weeks, Weekdays, meetup}
