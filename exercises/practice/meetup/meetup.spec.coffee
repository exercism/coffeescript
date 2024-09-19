{meetup, Weeks, Weekdays} = require './meetup'

describe 'Meetup', ->
  it "when teenth Monday is the 13th, the first day of the teenth week", ->
    input = {
      year: 2013,
      month: 5,
      week: Weeks.Teenth,
      dayofweek: Weekdays.Monday
    }
    expected = Date.UTC 2013, 5, 13
    expect(meetup input).toEqual expected

  xit "when teenth Monday is the 19th, the last day of the teenth week", ->
    input = {
      year: 2013,
      month: 8,
      week: Weeks.Teenth,
      dayofweek: Weekdays.Monday
    }
    expected = Date.UTC 2013, 8, 19
    expect(meetup input).toEqual expected

  xit "when teenth Monday is some day in the middle of the teenth week", ->
    input = {
      year: 2013,
      month: 9,
      week: Weeks.Teenth,
      dayofweek: Weekdays.Monday
    }
    expected = Date.UTC 2013, 9, 16
    expect(meetup input).toEqual expected

  xit "when teenth Tuesday is the 19th, the last day of the teenth week", ->
    input = {
      year: 2013,
      month: 3,
      week: Weeks.Teenth,
      dayofweek: Weekdays.Tuesday
    }
    expected = Date.UTC 2013, 3, 19
    expect(meetup input).toEqual expected

  xit "when teenth Tuesday is some day in the middle of the teenth week", ->
    input = {
      year: 2013,
      month: 4,
      week: Weeks.Teenth,
      dayofweek: Weekdays.Tuesday
    }
    expected = Date.UTC 2013, 4, 16
    expect(meetup input).toEqual expected

  xit "when teenth Tuesday is the 13th, the first day of the teenth week", ->
    input = {
      year: 2013,
      month: 8,
      week: Weeks.Teenth,
      dayofweek: Weekdays.Tuesday
    }
    expected = Date.UTC 2013, 8, 13
    expect(meetup input).toEqual expected

  xit "when teenth Wednesday is some day in the middle of the teenth week", ->
    input = {
      year: 2013,
      month: 1,
      week: Weeks.Teenth,
      dayofweek: Weekdays.Wednesday
    }
    expected = Date.UTC 2013, 1, 16
    expect(meetup input).toEqual expected

  xit "when teenth Wednesday is the 13th, the first day of the teenth week", ->
    input = {
      year: 2013,
      month: 2,
      week: Weeks.Teenth,
      dayofweek: Weekdays.Wednesday
    }
    expected = Date.UTC 2013, 2, 13
    expect(meetup input).toEqual expected

  xit "when teenth Wednesday is the 19th, the last day of the teenth week", ->
    input = {
      year: 2013,
      month: 6,
      week: Weeks.Teenth,
      dayofweek: Weekdays.Wednesday
    }
    expected = Date.UTC 2013, 6, 19
    expect(meetup input).toEqual expected

  xit "when teenth Thursday is some day in the middle of the teenth week", ->
    input = {
      year: 2013,
      month: 5,
      week: Weeks.Teenth,
      dayofweek: Weekdays.Thursday
    }
    expected = Date.UTC 2013, 5, 16
    expect(meetup input).toEqual expected

  xit "when teenth Thursday is the 13th, the first day of the teenth week", ->
    input = {
      year: 2013,
      month: 6,
      week: Weeks.Teenth,
      dayofweek: Weekdays.Thursday
    }
    expected = Date.UTC 2013, 6, 13
    expect(meetup input).toEqual expected

  xit "when teenth Thursday is the 19th, the last day of the teenth week", ->
    input = {
      year: 2013,
      month: 9,
      week: Weeks.Teenth,
      dayofweek: Weekdays.Thursday
    }
    expected = Date.UTC 2013, 9, 19
    expect(meetup input).toEqual expected

  xit "when teenth Friday is the 19th, the last day of the teenth week", ->
    input = {
      year: 2013,
      month: 4,
      week: Weeks.Teenth,
      dayofweek: Weekdays.Friday
    }
    expected = Date.UTC 2013, 4, 19
    expect(meetup input).toEqual expected

  xit "when teenth Friday is some day in the middle of the teenth week", ->
    input = {
      year: 2013,
      month: 8,
      week: Weeks.Teenth,
      dayofweek: Weekdays.Friday
    }
    expected = Date.UTC 2013, 8, 16
    expect(meetup input).toEqual expected

  xit "when teenth Friday is the 13th, the first day of the teenth week", ->
    input = {
      year: 2013,
      month: 9,
      week: Weeks.Teenth,
      dayofweek: Weekdays.Friday
    }
    expected = Date.UTC 2013, 9, 13
    expect(meetup input).toEqual expected

  xit "when teenth Saturday is some day in the middle of the teenth week", ->
    input = {
      year: 2013,
      month: 2,
      week: Weeks.Teenth,
      dayofweek: Weekdays.Saturday
    }
    expected = Date.UTC 2013, 2, 16
    expect(meetup input).toEqual expected

  xit "when teenth Saturday is the 13th, the first day of the teenth week", ->
    input = {
      year: 2013,
      month: 4,
      week: Weeks.Teenth,
      dayofweek: Weekdays.Saturday
    }
    expected = Date.UTC 2013, 4, 13
    expect(meetup input).toEqual expected

  xit "when teenth Saturday is the 19th, the last day of the teenth week", ->
    input = {
      year: 2013,
      month: 10,
      week: Weeks.Teenth,
      dayofweek: Weekdays.Saturday
    }
    expected = Date.UTC 2013, 10, 19
    expect(meetup input).toEqual expected

  xit "when teenth Sunday is the 19th, the last day of the teenth week", ->
    input = {
      year: 2013,
      month: 5,
      week: Weeks.Teenth,
      dayofweek: Weekdays.Sunday
    }
    expected = Date.UTC 2013, 5, 19
    expect(meetup input).toEqual expected

  xit "when teenth Sunday is some day in the middle of the teenth week", ->
    input = {
      year: 2013,
      month: 6,
      week: Weeks.Teenth,
      dayofweek: Weekdays.Sunday
    }
    expected = Date.UTC 2013, 6, 16
    expect(meetup input).toEqual expected

  xit "when teenth Sunday is the 13th, the first day of the teenth week", ->
    input = {
      year: 2013,
      month: 10,
      week: Weeks.Teenth,
      dayofweek: Weekdays.Sunday
    }
    expected = Date.UTC 2013, 10, 13
    expect(meetup input).toEqual expected

  xit "when first Monday is some day in the middle of the first week", ->
    input = {
      year: 2013,
      month: 3,
      week: Weeks.First,
      dayofweek: Weekdays.Monday
    }
    expected = Date.UTC 2013, 3, 4
    expect(meetup input).toEqual expected

  xit "when first Monday is the 1st, the first day of the first week", ->
    input = {
      year: 2013,
      month: 4,
      week: Weeks.First,
      dayofweek: Weekdays.Monday
    }
    expected = Date.UTC 2013, 4, 1
    expect(meetup input).toEqual expected

  xit "when first Tuesday is the 7th, the last day of the first week", ->
    input = {
      year: 2013,
      month: 5,
      week: Weeks.First,
      dayofweek: Weekdays.Tuesday
    }
    expected = Date.UTC 2013, 5, 7
    expect(meetup input).toEqual expected

  xit "when first Tuesday is some day in the middle of the first week", ->
    input = {
      year: 2013,
      month: 6,
      week: Weeks.First,
      dayofweek: Weekdays.Tuesday
    }
    expected = Date.UTC 2013, 6, 4
    expect(meetup input).toEqual expected

  xit "when first Wednesday is some day in the middle of the first week", ->
    input = {
      year: 2013,
      month: 7,
      week: Weeks.First,
      dayofweek: Weekdays.Wednesday
    }
    expected = Date.UTC 2013, 7, 3
    expect(meetup input).toEqual expected

  xit "when first Wednesday is the 7th, the last day of the first week", ->
    input = {
      year: 2013,
      month: 8,
      week: Weeks.First,
      dayofweek: Weekdays.Wednesday
    }
    expected = Date.UTC 2013, 8, 7
    expect(meetup input).toEqual expected

  xit "when first Thursday is some day in the middle of the first week", ->
    input = {
      year: 2013,
      month: 9,
      week: Weeks.First,
      dayofweek: Weekdays.Thursday
    }
    expected = Date.UTC 2013, 9, 5
    expect(meetup input).toEqual expected

  xit "when first Thursday is another day in the middle of the first week", ->
    input = {
      year: 2013,
      month: 10,
      week: Weeks.First,
      dayofweek: Weekdays.Thursday
    }
    expected = Date.UTC 2013, 10, 3
    expect(meetup input).toEqual expected

  xit "when first Friday is the 1st, the first day of the first week", ->
    input = {
      year: 2013,
      month: 11,
      week: Weeks.First,
      dayofweek: Weekdays.Friday
    }
    expected = Date.UTC 2013, 11, 1
    expect(meetup input).toEqual expected

  xit "when first Friday is some day in the middle of the first week", ->
    input = {
      year: 2013,
      month: 12,
      week: Weeks.First,
      dayofweek: Weekdays.Friday
    }
    expected = Date.UTC 2013, 12, 6
    expect(meetup input).toEqual expected

  xit "when first Saturday is some day in the middle of the first week", ->
    input = {
      year: 2013,
      month: 1,
      week: Weeks.First,
      dayofweek: Weekdays.Saturday
    }
    expected = Date.UTC 2013, 1, 5
    expect(meetup input).toEqual expected

  xit "when first Saturday is another day in the middle of the first week", ->
    input = {
      year: 2013,
      month: 2,
      week: Weeks.First,
      dayofweek: Weekdays.Saturday
    }
    expected = Date.UTC 2013, 2, 2
    expect(meetup input).toEqual expected

  xit "when first Sunday is some day in the middle of the first week", ->
    input = {
      year: 2013,
      month: 3,
      week: Weeks.First,
      dayofweek: Weekdays.Sunday
    }
    expected = Date.UTC 2013, 3, 3
    expect(meetup input).toEqual expected

  xit "when first Sunday is the 7th, the last day of the first week", ->
    input = {
      year: 2013,
      month: 4,
      week: Weeks.First,
      dayofweek: Weekdays.Sunday
    }
    expected = Date.UTC 2013, 4, 7
    expect(meetup input).toEqual expected

  xit "when second Monday is some day in the middle of the second week", ->
    input = {
      year: 2013,
      month: 3,
      week: Weeks.Second,
      dayofweek: Weekdays.Monday
    }
    expected = Date.UTC 2013, 3, 11
    expect(meetup input).toEqual expected

  xit "when second Monday is the 8th, the first day of the second week", ->
    input = {
      year: 2013,
      month: 4,
      week: Weeks.Second,
      dayofweek: Weekdays.Monday
    }
    expected = Date.UTC 2013, 4, 8
    expect(meetup input).toEqual expected

  xit "when second Tuesday is the 14th, the last day of the second week", ->
    input = {
      year: 2013,
      month: 5,
      week: Weeks.Second,
      dayofweek: Weekdays.Tuesday
    }
    expected = Date.UTC 2013, 5, 14
    expect(meetup input).toEqual expected

  xit "when second Tuesday is some day in the middle of the second week", ->
    input = {
      year: 2013,
      month: 6,
      week: Weeks.Second,
      dayofweek: Weekdays.Tuesday
    }
    expected = Date.UTC 2013, 6, 11
    expect(meetup input).toEqual expected

  xit "when second Wednesday is some day in the middle of the second week", ->
    input = {
      year: 2013,
      month: 7,
      week: Weeks.Second,
      dayofweek: Weekdays.Wednesday
    }
    expected = Date.UTC 2013, 7, 10
    expect(meetup input).toEqual expected

  xit "when second Wednesday is the 14th, the last day of the second week", ->
    input = {
      year: 2013,
      month: 8,
      week: Weeks.Second,
      dayofweek: Weekdays.Wednesday
    }
    expected = Date.UTC 2013, 8, 14
    expect(meetup input).toEqual expected

  xit "when second Thursday is some day in the middle of the second week", ->
    input = {
      year: 2013,
      month: 9,
      week: Weeks.Second,
      dayofweek: Weekdays.Thursday
    }
    expected = Date.UTC 2013, 9, 12
    expect(meetup input).toEqual expected

  xit "when second Thursday is another day in the middle of the second week", ->
    input = {
      year: 2013,
      month: 10,
      week: Weeks.Second,
      dayofweek: Weekdays.Thursday
    }
    expected = Date.UTC 2013, 10, 10
    expect(meetup input).toEqual expected

  xit "when second Friday is the 8th, the first day of the second week", ->
    input = {
      year: 2013,
      month: 11,
      week: Weeks.Second,
      dayofweek: Weekdays.Friday
    }
    expected = Date.UTC 2013, 11, 8
    expect(meetup input).toEqual expected

  xit "when second Friday is some day in the middle of the second week", ->
    input = {
      year: 2013,
      month: 12,
      week: Weeks.Second,
      dayofweek: Weekdays.Friday
    }
    expected = Date.UTC 2013, 12, 13
    expect(meetup input).toEqual expected

  xit "when second Saturday is some day in the middle of the second week", ->
    input = {
      year: 2013,
      month: 1,
      week: Weeks.Second,
      dayofweek: Weekdays.Saturday
    }
    expected = Date.UTC 2013, 1, 12
    expect(meetup input).toEqual expected

  xit "when second Saturday is another day in the middle of the second week", ->
    input = {
      year: 2013,
      month: 2,
      week: Weeks.Second,
      dayofweek: Weekdays.Saturday
    }
    expected = Date.UTC 2013, 2, 9
    expect(meetup input).toEqual expected

  xit "when second Sunday is some day in the middle of the second week", ->
    input = {
      year: 2013,
      month: 3,
      week: Weeks.Second,
      dayofweek: Weekdays.Sunday
    }
    expected = Date.UTC 2013, 3, 10
    expect(meetup input).toEqual expected

  xit "when second Sunday is the 14th, the last day of the second week", ->
    input = {
      year: 2013,
      month: 4,
      week: Weeks.Second,
      dayofweek: Weekdays.Sunday
    }
    expected = Date.UTC 2013, 4, 14
    expect(meetup input).toEqual expected

  xit "when third Monday is some day in the middle of the third week", ->
    input = {
      year: 2013,
      month: 3,
      week: Weeks.Third,
      dayofweek: Weekdays.Monday
    }
    expected = Date.UTC 2013, 3, 18
    expect(meetup input).toEqual expected

  xit "when third Monday is the 15th, the first day of the third week", ->
    input = {
      year: 2013,
      month: 4,
      week: Weeks.Third,
      dayofweek: Weekdays.Monday
    }
    expected = Date.UTC 2013, 4, 15
    expect(meetup input).toEqual expected

  xit "when third Tuesday is the 21st, the last day of the third week", ->
    input = {
      year: 2013,
      month: 5,
      week: Weeks.Third,
      dayofweek: Weekdays.Tuesday
    }
    expected = Date.UTC 2013, 5, 21
    expect(meetup input).toEqual expected

  xit "when third Tuesday is some day in the middle of the third week", ->
    input = {
      year: 2013,
      month: 6,
      week: Weeks.Third,
      dayofweek: Weekdays.Tuesday
    }
    expected = Date.UTC 2013, 6, 18
    expect(meetup input).toEqual expected

  xit "when third Wednesday is some day in the middle of the third week", ->
    input = {
      year: 2013,
      month: 7,
      week: Weeks.Third,
      dayofweek: Weekdays.Wednesday
    }
    expected = Date.UTC 2013, 7, 17
    expect(meetup input).toEqual expected

  xit "when third Wednesday is the 21st, the last day of the third week", ->
    input = {
      year: 2013,
      month: 8,
      week: Weeks.Third,
      dayofweek: Weekdays.Wednesday
    }
    expected = Date.UTC 2013, 8, 21
    expect(meetup input).toEqual expected

  xit "when third Thursday is some day in the middle of the third week", ->
    input = {
      year: 2013,
      month: 9,
      week: Weeks.Third,
      dayofweek: Weekdays.Thursday
    }
    expected = Date.UTC 2013, 9, 19
    expect(meetup input).toEqual expected

  xit "when third Thursday is another day in the middle of the third week", ->
    input = {
      year: 2013,
      month: 10,
      week: Weeks.Third,
      dayofweek: Weekdays.Thursday
    }
    expected = Date.UTC 2013, 10, 17
    expect(meetup input).toEqual expected

  xit "when third Friday is the 15th, the first day of the third week", ->
    input = {
      year: 2013,
      month: 11,
      week: Weeks.Third,
      dayofweek: Weekdays.Friday
    }
    expected = Date.UTC 2013, 11, 15
    expect(meetup input).toEqual expected

  xit "when third Friday is some day in the middle of the third week", ->
    input = {
      year: 2013,
      month: 12,
      week: Weeks.Third,
      dayofweek: Weekdays.Friday
    }
    expected = Date.UTC 2013, 12, 20
    expect(meetup input).toEqual expected

  xit "when third Saturday is some day in the middle of the third week", ->
    input = {
      year: 2013,
      month: 1,
      week: Weeks.Third,
      dayofweek: Weekdays.Saturday
    }
    expected = Date.UTC 2013, 1, 19
    expect(meetup input).toEqual expected

  xit "when third Saturday is another day in the middle of the third week", ->
    input = {
      year: 2013,
      month: 2,
      week: Weeks.Third,
      dayofweek: Weekdays.Saturday
    }
    expected = Date.UTC 2013, 2, 16
    expect(meetup input).toEqual expected

  xit "when third Sunday is some day in the middle of the third week", ->
    input = {
      year: 2013,
      month: 3,
      week: Weeks.Third,
      dayofweek: Weekdays.Sunday
    }
    expected = Date.UTC 2013, 3, 17
    expect(meetup input).toEqual expected

  xit "when third Sunday is the 21st, the last day of the third week", ->
    input = {
      year: 2013,
      month: 4,
      week: Weeks.Third,
      dayofweek: Weekdays.Sunday
    }
    expected = Date.UTC 2013, 4, 21
    expect(meetup input).toEqual expected

  xit "when fourth Monday is some day in the middle of the fourth week", ->
    input = {
      year: 2013,
      month: 3,
      week: Weeks.Fourth,
      dayofweek: Weekdays.Monday
    }
    expected = Date.UTC 2013, 3, 25
    expect(meetup input).toEqual expected

  xit "when fourth Monday is the 22nd, the first day of the fourth week", ->
    input = {
      year: 2013,
      month: 4,
      week: Weeks.Fourth,
      dayofweek: Weekdays.Monday
    }
    expected = Date.UTC 2013, 4, 22
    expect(meetup input).toEqual expected

  xit "when fourth Tuesday is the 28th, the last day of the fourth week", ->
    input = {
      year: 2013,
      month: 5,
      week: Weeks.Fourth,
      dayofweek: Weekdays.Tuesday
    }
    expected = Date.UTC 2013, 5, 28
    expect(meetup input).toEqual expected

  xit "when fourth Tuesday is some day in the middle of the fourth week", ->
    input = {
      year: 2013,
      month: 6,
      week: Weeks.Fourth,
      dayofweek: Weekdays.Tuesday
    }
    expected = Date.UTC 2013, 6, 25
    expect(meetup input).toEqual expected

  xit "when fourth Wednesday is some day in the middle of the fourth week", ->
    input = {
      year: 2013,
      month: 7,
      week: Weeks.Fourth,
      dayofweek: Weekdays.Wednesday
    }
    expected = Date.UTC 2013, 7, 24
    expect(meetup input).toEqual expected

  xit "when fourth Wednesday is the 28th, the last day of the fourth week", ->
    input = {
      year: 2013,
      month: 8,
      week: Weeks.Fourth,
      dayofweek: Weekdays.Wednesday
    }
    expected = Date.UTC 2013, 8, 28
    expect(meetup input).toEqual expected

  xit "when fourth Thursday is some day in the middle of the fourth week", ->
    input = {
      year: 2013,
      month: 9,
      week: Weeks.Fourth,
      dayofweek: Weekdays.Thursday
    }
    expected = Date.UTC 2013, 9, 26
    expect(meetup input).toEqual expected

  xit "when fourth Thursday is another day in the middle of the fourth week", ->
    input = {
      year: 2013,
      month: 10,
      week: Weeks.Fourth,
      dayofweek: Weekdays.Thursday
    }
    expected = Date.UTC 2013, 10, 24
    expect(meetup input).toEqual expected

  xit "when fourth Friday is the 22nd, the first day of the fourth week", ->
    input = {
      year: 2013,
      month: 11,
      week: Weeks.Fourth,
      dayofweek: Weekdays.Friday
    }
    expected = Date.UTC 2013, 11, 22
    expect(meetup input).toEqual expected

  xit "when fourth Friday is some day in the middle of the fourth week", ->
    input = {
      year: 2013,
      month: 12,
      week: Weeks.Fourth,
      dayofweek: Weekdays.Friday
    }
    expected = Date.UTC 2013, 12, 27
    expect(meetup input).toEqual expected

  xit "when fourth Saturday is some day in the middle of the fourth week", ->
    input = {
      year: 2013,
      month: 1,
      week: Weeks.Fourth,
      dayofweek: Weekdays.Saturday
    }
    expected = Date.UTC 2013, 1, 26
    expect(meetup input).toEqual expected

  xit "when fourth Saturday is another day in the middle of the fourth week", ->
    input = {
      year: 2013,
      month: 2,
      week: Weeks.Fourth,
      dayofweek: Weekdays.Saturday
    }
    expected = Date.UTC 2013, 2, 23
    expect(meetup input).toEqual expected

  xit "when fourth Sunday is some day in the middle of the fourth week", ->
    input = {
      year: 2013,
      month: 3,
      week: Weeks.Fourth,
      dayofweek: Weekdays.Sunday
    }
    expected = Date.UTC 2013, 3, 24
    expect(meetup input).toEqual expected

  xit "when fourth Sunday is the 28th, the last day of the fourth week", ->
    input = {
      year: 2013,
      month: 4,
      week: Weeks.Fourth,
      dayofweek: Weekdays.Sunday
    }
    expected = Date.UTC 2013, 4, 28
    expect(meetup input).toEqual expected

  xit "last Monday in a month with four Mondays", ->
    input = {
      year: 2013,
      month: 3,
      week: Weeks.Last,
      dayofweek: Weekdays.Monday
    }
    expected = Date.UTC 2013, 3, 25
    expect(meetup input).toEqual expected

  xit "last Monday in a month with five Mondays", ->
    input = {
      year: 2013,
      month: 4,
      week: Weeks.Last,
      dayofweek: Weekdays.Monday
    }
    expected = Date.UTC 2013, 4, 29
    expect(meetup input).toEqual expected

  xit "last Tuesday in a month with four Tuesdays", ->
    input = {
      year: 2013,
      month: 5,
      week: Weeks.Last,
      dayofweek: Weekdays.Tuesday
    }
    expected = Date.UTC 2013, 5, 28
    expect(meetup input).toEqual expected

  xit "last Tuesday in another month with four Tuesdays", ->
    input = {
      year: 2013,
      month: 6,
      week: Weeks.Last,
      dayofweek: Weekdays.Tuesday
    }
    expected = Date.UTC 2013, 6, 25
    expect(meetup input).toEqual expected

  xit "last Wednesday in a month with five Wednesdays", ->
    input = {
      year: 2013,
      month: 7,
      week: Weeks.Last,
      dayofweek: Weekdays.Wednesday
    }
    expected = Date.UTC 2013, 7, 31
    expect(meetup input).toEqual expected

  xit "last Wednesday in a month with four Wednesdays", ->
    input = {
      year: 2013,
      month: 8,
      week: Weeks.Last,
      dayofweek: Weekdays.Wednesday
    }
    expected = Date.UTC 2013, 8, 28
    expect(meetup input).toEqual expected

  xit "last Thursday in a month with four Thursdays", ->
    input = {
      year: 2013,
      month: 9,
      week: Weeks.Last,
      dayofweek: Weekdays.Thursday
    }
    expected = Date.UTC 2013, 9, 26
    expect(meetup input).toEqual expected

  xit "last Thursday in a month with five Thursdays", ->
    input = {
      year: 2013,
      month: 10,
      week: Weeks.Last,
      dayofweek: Weekdays.Thursday
    }
    expected = Date.UTC 2013, 10, 31
    expect(meetup input).toEqual expected

  xit "last Friday in a month with five Fridays", ->
    input = {
      year: 2013,
      month: 11,
      week: Weeks.Last,
      dayofweek: Weekdays.Friday
    }
    expected = Date.UTC 2013, 11, 29
    expect(meetup input).toEqual expected

  xit "last Friday in a month with four Fridays", ->
    input = {
      year: 2013,
      month: 12,
      week: Weeks.Last,
      dayofweek: Weekdays.Friday
    }
    expected = Date.UTC 2013, 12, 27
    expect(meetup input).toEqual expected

  xit "last Saturday in a month with four Saturdays", ->
    input = {
      year: 2013,
      month: 1,
      week: Weeks.Last,
      dayofweek: Weekdays.Saturday
    }
    expected = Date.UTC 2013, 1, 26
    expect(meetup input).toEqual expected

  xit "last Saturday in another month with four Saturdays", ->
    input = {
      year: 2013,
      month: 2,
      week: Weeks.Last,
      dayofweek: Weekdays.Saturday
    }
    expected = Date.UTC 2013, 2, 23
    expect(meetup input).toEqual expected

  xit "last Sunday in a month with five Sundays", ->
    input = {
      year: 2013,
      month: 3,
      week: Weeks.Last,
      dayofweek: Weekdays.Sunday
    }
    expected = Date.UTC 2013, 3, 31
    expect(meetup input).toEqual expected

  xit "last Sunday in a month with four Sundays", ->
    input = {
      year: 2013,
      month: 4,
      week: Weeks.Last,
      dayofweek: Weekdays.Sunday
    }
    expected = Date.UTC 2013, 4, 28
    expect(meetup input).toEqual expected

  xit "when last Wednesday in February in a leap year is the 29th", ->
    input = {
      year: 2012,
      month: 2,
      week: Weeks.Last,
      dayofweek: Weekdays.Wednesday
    }
    expected = Date.UTC 2012, 2, 29
    expect(meetup input).toEqual expected

  xit "last Wednesday in December that is also the last day of the year", ->
    input = {
      year: 2014,
      month: 12,
      week: Weeks.Last,
      dayofweek: Weekdays.Wednesday
    }
    expected = Date.UTC 2014, 12, 31
    expect(meetup input).toEqual expected

  xit "when last Sunday in February in a non-leap year is not the 29th", ->
    input = {
      year: 2015,
      month: 2,
      week: Weeks.Last,
      dayofweek: Weekdays.Sunday
    }
    expected = Date.UTC 2015, 2, 22
    expect(meetup input).toEqual expected

  xit "when first Friday is the 7th, the last day of the first week", ->
    input = {
      year: 2012,
      month: 12,
      week: Weeks.First,
      dayofweek: Weekdays.Friday
    }
    expected = Date.UTC 2012, 12, 7
    expect(meetup input).toEqual expected
