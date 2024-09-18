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
  # javascript uses 0-based months
  # set hour to 12 to avoid daylight saving problems
  date = new Date year, month - 1, 1, 12
  # the zeroth day of next month is the last day of this month
  lastDateOfMonth = new Date(year, month, 0, 12).getDate()

  loop
    if date.getDay() == dayofweek 
      d = date.getDate()
      if week is Weeks.Last
        if d >= lastDateOfMonth - 6
          return Date.UTC(date.getFullYear(), date.getMonth() + 1, d)
      else
        if d >= week
          return Date.UTC(date.getFullYear(), date.getMonth() + 1, d)
    date.setDate (date.getDate() + 1)

module.exports = {Weeks, Weekdays, meetup}
