meetup = require './meetup'

describe 'Meetup', ->
  it "when teenth Monday is the 13th, the first day of the teenth week", ->
    input = {
      year: 2013,
      month: 5,
      week: "teenth",
      dayofweek: "Monday"
    }
    expected = "2013-05-13"
    expect(meetup input).toEqual expected

  xit "when teenth Monday is the 19th, the last day of the teenth week", ->
    input = {
      year: 2013,
      month: 8,
      week: "teenth",
      dayofweek: "Monday"
    }
    expected = "2013-08-19"
    expect(meetup input).toEqual expected

  xit "when teenth Monday is some day in the middle of the teenth week", ->
    input = {
      year: 2013,
      month: 9,
      week: "teenth",
      dayofweek: "Monday"
    }
    expected = "2013-09-16"
    expect(meetup input).toEqual expected

  xit "when teenth Tuesday is the 19th, the last day of the teenth week", ->
    input = {
      year: 2013,
      month: 3,
      week: "teenth",
      dayofweek: "Tuesday"
    }
    expected = "2013-03-19"
    expect(meetup input).toEqual expected

  xit "when teenth Tuesday is some day in the middle of the teenth week", ->
    input = {
      year: 2013,
      month: 4,
      week: "teenth",
      dayofweek: "Tuesday"
    }
    expected = "2013-04-16"
    expect(meetup input).toEqual expected

  xit "when teenth Tuesday is the 13th, the first day of the teenth week", ->
    input = {
      year: 2013,
      month: 8,
      week: "teenth",
      dayofweek: "Tuesday"
    }
    expected = "2013-08-13"
    expect(meetup input).toEqual expected

  xit "when teenth Wednesday is some day in the middle of the teenth week", ->
    input = {
      year: 2013,
      month: 1,
      week: "teenth",
      dayofweek: "Wednesday"
    }
    expected = "2013-01-16"
    expect(meetup input).toEqual expected

  xit "when teenth Wednesday is the 13th, the first day of the teenth week", ->
    input = {
      year: 2013,
      month: 2,
      week: "teenth",
      dayofweek: "Wednesday"
    }
    expected = "2013-02-13"
    expect(meetup input).toEqual expected

  xit "when teenth Wednesday is the 19th, the last day of the teenth week", ->
    input = {
      year: 2013,
      month: 6,
      week: "teenth",
      dayofweek: "Wednesday"
    }
    expected = "2013-06-19"
    expect(meetup input).toEqual expected

  xit "when teenth Thursday is some day in the middle of the teenth week", ->
    input = {
      year: 2013,
      month: 5,
      week: "teenth",
      dayofweek: "Thursday"
    }
    expected = "2013-05-16"
    expect(meetup input).toEqual expected

  xit "when teenth Thursday is the 13th, the first day of the teenth week", ->
    input = {
      year: 2013,
      month: 6,
      week: "teenth",
      dayofweek: "Thursday"
    }
    expected = "2013-06-13"
    expect(meetup input).toEqual expected

  xit "when teenth Thursday is the 19th, the last day of the teenth week", ->
    input = {
      year: 2013,
      month: 9,
      week: "teenth",
      dayofweek: "Thursday"
    }
    expected = "2013-09-19"
    expect(meetup input).toEqual expected

  xit "when teenth Friday is the 19th, the last day of the teenth week", ->
    input = {
      year: 2013,
      month: 4,
      week: "teenth",
      dayofweek: "Friday"
    }
    expected = "2013-04-19"
    expect(meetup input).toEqual expected

  xit "when teenth Friday is some day in the middle of the teenth week", ->
    input = {
      year: 2013,
      month: 8,
      week: "teenth",
      dayofweek: "Friday"
    }
    expected = "2013-08-16"
    expect(meetup input).toEqual expected

  xit "when teenth Friday is the 13th, the first day of the teenth week", ->
    input = {
      year: 2013,
      month: 9,
      week: "teenth",
      dayofweek: "Friday"
    }
    expected = "2013-09-13"
    expect(meetup input).toEqual expected

  xit "when teenth Saturday is some day in the middle of the teenth week", ->
    input = {
      year: 2013,
      month: 2,
      week: "teenth",
      dayofweek: "Saturday"
    }
    expected = "2013-02-16"
    expect(meetup input).toEqual expected

  xit "when teenth Saturday is the 13th, the first day of the teenth week", ->
    input = {
      year: 2013,
      month: 4,
      week: "teenth",
      dayofweek: "Saturday"
    }
    expected = "2013-04-13"
    expect(meetup input).toEqual expected

  xit "when teenth Saturday is the 19th, the last day of the teenth week", ->
    input = {
      year: 2013,
      month: 10,
      week: "teenth",
      dayofweek: "Saturday"
    }
    expected = "2013-10-19"
    expect(meetup input).toEqual expected

  xit "when teenth Sunday is the 19th, the last day of the teenth week", ->
    input = {
      year: 2013,
      month: 5,
      week: "teenth",
      dayofweek: "Sunday"
    }
    expected = "2013-05-19"
    expect(meetup input).toEqual expected

  xit "when teenth Sunday is some day in the middle of the teenth week", ->
    input = {
      year: 2013,
      month: 6,
      week: "teenth",
      dayofweek: "Sunday"
    }
    expected = "2013-06-16"
    expect(meetup input).toEqual expected

  xit "when teenth Sunday is the 13th, the first day of the teenth week", ->
    input = {
      year: 2013,
      month: 10,
      week: "teenth",
      dayofweek: "Sunday"
    }
    expected = "2013-10-13"
    expect(meetup input).toEqual expected

  xit "when first Monday is some day in the middle of the first week", ->
    input = {
      year: 2013,
      month: 3,
      week: "first",
      dayofweek: "Monday"
    }
    expected = "2013-03-04"
    expect(meetup input).toEqual expected

  xit "when first Monday is the 1st, the first day of the first week", ->
    input = {
      year: 2013,
      month: 4,
      week: "first",
      dayofweek: "Monday"
    }
    expected = "2013-04-01"
    expect(meetup input).toEqual expected

  xit "when first Tuesday is the 7th, the last day of the first week", ->
    input = {
      year: 2013,
      month: 5,
      week: "first",
      dayofweek: "Tuesday"
    }
    expected = "2013-05-07"
    expect(meetup input).toEqual expected

  xit "when first Tuesday is some day in the middle of the first week", ->
    input = {
      year: 2013,
      month: 6,
      week: "first",
      dayofweek: "Tuesday"
    }
    expected = "2013-06-04"
    expect(meetup input).toEqual expected

  xit "when first Wednesday is some day in the middle of the first week", ->
    input = {
      year: 2013,
      month: 7,
      week: "first",
      dayofweek: "Wednesday"
    }
    expected = "2013-07-03"
    expect(meetup input).toEqual expected

  xit "when first Wednesday is the 7th, the last day of the first week", ->
    input = {
      year: 2013,
      month: 8,
      week: "first",
      dayofweek: "Wednesday"
    }
    expected = "2013-08-07"
    expect(meetup input).toEqual expected

  xit "when first Thursday is some day in the middle of the first week", ->
    input = {
      year: 2013,
      month: 9,
      week: "first",
      dayofweek: "Thursday"
    }
    expected = "2013-09-05"
    expect(meetup input).toEqual expected

  xit "when first Thursday is another day in the middle of the first week", ->
    input = {
      year: 2013,
      month: 10,
      week: "first",
      dayofweek: "Thursday"
    }
    expected = "2013-10-03"
    expect(meetup input).toEqual expected

  xit "when first Friday is the 1st, the first day of the first week", ->
    input = {
      year: 2013,
      month: 11,
      week: "first",
      dayofweek: "Friday"
    }
    expected = "2013-11-01"
    expect(meetup input).toEqual expected

  xit "when first Friday is some day in the middle of the first week", ->
    input = {
      year: 2013,
      month: 12,
      week: "first",
      dayofweek: "Friday"
    }
    expected = "2013-12-06"
    expect(meetup input).toEqual expected

  xit "when first Saturday is some day in the middle of the first week", ->
    input = {
      year: 2013,
      month: 1,
      week: "first",
      dayofweek: "Saturday"
    }
    expected = "2013-01-05"
    expect(meetup input).toEqual expected

  xit "when first Saturday is another day in the middle of the first week", ->
    input = {
      year: 2013,
      month: 2,
      week: "first",
      dayofweek: "Saturday"
    }
    expected = "2013-02-02"
    expect(meetup input).toEqual expected

  xit "when first Sunday is some day in the middle of the first week", ->
    input = {
      year: 2013,
      month: 3,
      week: "first",
      dayofweek: "Sunday"
    }
    expected = "2013-03-03"
    expect(meetup input).toEqual expected

  xit "when first Sunday is the 7th, the last day of the first week", ->
    input = {
      year: 2013,
      month: 4,
      week: "first",
      dayofweek: "Sunday"
    }
    expected = "2013-04-07"
    expect(meetup input).toEqual expected

  xit "when second Monday is some day in the middle of the second week", ->
    input = {
      year: 2013,
      month: 3,
      week: "second",
      dayofweek: "Monday"
    }
    expected = "2013-03-11"
    expect(meetup input).toEqual expected

  xit "when second Monday is the 8th, the first day of the second week", ->
    input = {
      year: 2013,
      month: 4,
      week: "second",
      dayofweek: "Monday"
    }
    expected = "2013-04-08"
    expect(meetup input).toEqual expected

  xit "when second Tuesday is the 14th, the last day of the second week", ->
    input = {
      year: 2013,
      month: 5,
      week: "second",
      dayofweek: "Tuesday"
    }
    expected = "2013-05-14"
    expect(meetup input).toEqual expected

  xit "when second Tuesday is some day in the middle of the second week", ->
    input = {
      year: 2013,
      month: 6,
      week: "second",
      dayofweek: "Tuesday"
    }
    expected = "2013-06-11"
    expect(meetup input).toEqual expected

  xit "when second Wednesday is some day in the middle of the second week", ->
    input = {
      year: 2013,
      month: 7,
      week: "second",
      dayofweek: "Wednesday"
    }
    expected = "2013-07-10"
    expect(meetup input).toEqual expected

  xit "when second Wednesday is the 14th, the last day of the second week", ->
    input = {
      year: 2013,
      month: 8,
      week: "second",
      dayofweek: "Wednesday"
    }
    expected = "2013-08-14"
    expect(meetup input).toEqual expected

  xit "when second Thursday is some day in the middle of the second week", ->
    input = {
      year: 2013,
      month: 9,
      week: "second",
      dayofweek: "Thursday"
    }
    expected = "2013-09-12"
    expect(meetup input).toEqual expected

  xit "when second Thursday is another day in the middle of the second week", ->
    input = {
      year: 2013,
      month: 10,
      week: "second",
      dayofweek: "Thursday"
    }
    expected = "2013-10-10"
    expect(meetup input).toEqual expected

  xit "when second Friday is the 8th, the first day of the second week", ->
    input = {
      year: 2013,
      month: 11,
      week: "second",
      dayofweek: "Friday"
    }
    expected = "2013-11-08"
    expect(meetup input).toEqual expected

  xit "when second Friday is some day in the middle of the second week", ->
    input = {
      year: 2013,
      month: 12,
      week: "second",
      dayofweek: "Friday"
    }
    expected = "2013-12-13"
    expect(meetup input).toEqual expected

  xit "when second Saturday is some day in the middle of the second week", ->
    input = {
      year: 2013,
      month: 1,
      week: "second",
      dayofweek: "Saturday"
    }
    expected = "2013-01-12"
    expect(meetup input).toEqual expected

  xit "when second Saturday is another day in the middle of the second week", ->
    input = {
      year: 2013,
      month: 2,
      week: "second",
      dayofweek: "Saturday"
    }
    expected = "2013-02-09"
    expect(meetup input).toEqual expected

  xit "when second Sunday is some day in the middle of the second week", ->
    input = {
      year: 2013,
      month: 3,
      week: "second",
      dayofweek: "Sunday"
    }
    expected = "2013-03-10"
    expect(meetup input).toEqual expected

  xit "when second Sunday is the 14th, the last day of the second week", ->
    input = {
      year: 2013,
      month: 4,
      week: "second",
      dayofweek: "Sunday"
    }
    expected = "2013-04-14"
    expect(meetup input).toEqual expected

  xit "when third Monday is some day in the middle of the third week", ->
    input = {
      year: 2013,
      month: 3,
      week: "third",
      dayofweek: "Monday"
    }
    expected = "2013-03-18"
    expect(meetup input).toEqual expected

  xit "when third Monday is the 15th, the first day of the third week", ->
    input = {
      year: 2013,
      month: 4,
      week: "third",
      dayofweek: "Monday"
    }
    expected = "2013-04-15"
    expect(meetup input).toEqual expected

  xit "when third Tuesday is the 21st, the last day of the third week", ->
    input = {
      year: 2013,
      month: 5,
      week: "third",
      dayofweek: "Tuesday"
    }
    expected = "2013-05-21"
    expect(meetup input).toEqual expected

  xit "when third Tuesday is some day in the middle of the third week", ->
    input = {
      year: 2013,
      month: 6,
      week: "third",
      dayofweek: "Tuesday"
    }
    expected = "2013-06-18"
    expect(meetup input).toEqual expected

  xit "when third Wednesday is some day in the middle of the third week", ->
    input = {
      year: 2013,
      month: 7,
      week: "third",
      dayofweek: "Wednesday"
    }
    expected = "2013-07-17"
    expect(meetup input).toEqual expected

  xit "when third Wednesday is the 21st, the last day of the third week", ->
    input = {
      year: 2013,
      month: 8,
      week: "third",
      dayofweek: "Wednesday"
    }
    expected = "2013-08-21"
    expect(meetup input).toEqual expected

  xit "when third Thursday is some day in the middle of the third week", ->
    input = {
      year: 2013,
      month: 9,
      week: "third",
      dayofweek: "Thursday"
    }
    expected = "2013-09-19"
    expect(meetup input).toEqual expected

  xit "when third Thursday is another day in the middle of the third week", ->
    input = {
      year: 2013,
      month: 10,
      week: "third",
      dayofweek: "Thursday"
    }
    expected = "2013-10-17"
    expect(meetup input).toEqual expected

  xit "when third Friday is the 15th, the first day of the third week", ->
    input = {
      year: 2013,
      month: 11,
      week: "third",
      dayofweek: "Friday"
    }
    expected = "2013-11-15"
    expect(meetup input).toEqual expected

  xit "when third Friday is some day in the middle of the third week", ->
    input = {
      year: 2013,
      month: 12,
      week: "third",
      dayofweek: "Friday"
    }
    expected = "2013-12-20"
    expect(meetup input).toEqual expected

  xit "when third Saturday is some day in the middle of the third week", ->
    input = {
      year: 2013,
      month: 1,
      week: "third",
      dayofweek: "Saturday"
    }
    expected = "2013-01-19"
    expect(meetup input).toEqual expected

  xit "when third Saturday is another day in the middle of the third week", ->
    input = {
      year: 2013,
      month: 2,
      week: "third",
      dayofweek: "Saturday"
    }
    expected = "2013-02-16"
    expect(meetup input).toEqual expected

  xit "when third Sunday is some day in the middle of the third week", ->
    input = {
      year: 2013,
      month: 3,
      week: "third",
      dayofweek: "Sunday"
    }
    expected = "2013-03-17"
    expect(meetup input).toEqual expected

  xit "when third Sunday is the 21st, the last day of the third week", ->
    input = {
      year: 2013,
      month: 4,
      week: "third",
      dayofweek: "Sunday"
    }
    expected = "2013-04-21"
    expect(meetup input).toEqual expected

  xit "when fourth Monday is some day in the middle of the fourth week", ->
    input = {
      year: 2013,
      month: 3,
      week: "fourth",
      dayofweek: "Monday"
    }
    expected = "2013-03-25"
    expect(meetup input).toEqual expected

  xit "when fourth Monday is the 22nd, the first day of the fourth week", ->
    input = {
      year: 2013,
      month: 4,
      week: "fourth",
      dayofweek: "Monday"
    }
    expected = "2013-04-22"
    expect(meetup input).toEqual expected

  xit "when fourth Tuesday is the 28th, the last day of the fourth week", ->
    input = {
      year: 2013,
      month: 5,
      week: "fourth",
      dayofweek: "Tuesday"
    }
    expected = "2013-05-28"
    expect(meetup input).toEqual expected

  xit "when fourth Tuesday is some day in the middle of the fourth week", ->
    input = {
      year: 2013,
      month: 6,
      week: "fourth",
      dayofweek: "Tuesday"
    }
    expected = "2013-06-25"
    expect(meetup input).toEqual expected

  xit "when fourth Wednesday is some day in the middle of the fourth week", ->
    input = {
      year: 2013,
      month: 7,
      week: "fourth",
      dayofweek: "Wednesday"
    }
    expected = "2013-07-24"
    expect(meetup input).toEqual expected

  xit "when fourth Wednesday is the 28th, the last day of the fourth week", ->
    input = {
      year: 2013,
      month: 8,
      week: "fourth",
      dayofweek: "Wednesday"
    }
    expected = "2013-08-28"
    expect(meetup input).toEqual expected

  xit "when fourth Thursday is some day in the middle of the fourth week", ->
    input = {
      year: 2013,
      month: 9,
      week: "fourth",
      dayofweek: "Thursday"
    }
    expected = "2013-09-26"
    expect(meetup input).toEqual expected

  xit "when fourth Thursday is another day in the middle of the fourth week", ->
    input = {
      year: 2013,
      month: 10,
      week: "fourth",
      dayofweek: "Thursday"
    }
    expected = "2013-10-24"
    expect(meetup input).toEqual expected

  xit "when fourth Friday is the 22nd, the first day of the fourth week", ->
    input = {
      year: 2013,
      month: 11,
      week: "fourth",
      dayofweek: "Friday"
    }
    expected = "2013-11-22"
    expect(meetup input).toEqual expected

  xit "when fourth Friday is some day in the middle of the fourth week", ->
    input = {
      year: 2013,
      month: 12,
      week: "fourth",
      dayofweek: "Friday"
    }
    expected = "2013-12-27"
    expect(meetup input).toEqual expected

  xit "when fourth Saturday is some day in the middle of the fourth week", ->
    input = {
      year: 2013,
      month: 1,
      week: "fourth",
      dayofweek: "Saturday"
    }
    expected = "2013-01-26"
    expect(meetup input).toEqual expected

  xit "when fourth Saturday is another day in the middle of the fourth week", ->
    input = {
      year: 2013,
      month: 2,
      week: "fourth",
      dayofweek: "Saturday"
    }
    expected = "2013-02-23"
    expect(meetup input).toEqual expected

  xit "when fourth Sunday is some day in the middle of the fourth week", ->
    input = {
      year: 2013,
      month: 3,
      week: "fourth",
      dayofweek: "Sunday"
    }
    expected = "2013-03-24"
    expect(meetup input).toEqual expected

  xit "when fourth Sunday is the 28th, the last day of the fourth week", ->
    input = {
      year: 2013,
      month: 4,
      week: "fourth",
      dayofweek: "Sunday"
    }
    expected = "2013-04-28"
    expect(meetup input).toEqual expected

  xit "last Monday in a month with four Mondays", ->
    input = {
      year: 2013,
      month: 3,
      week: "last",
      dayofweek: "Monday"
    }
    expected = "2013-03-25"
    expect(meetup input).toEqual expected

  xit "last Monday in a month with five Mondays", ->
    input = {
      year: 2013,
      month: 4,
      week: "last",
      dayofweek: "Monday"
    }
    expected = "2013-04-29"
    expect(meetup input).toEqual expected

  xit "last Tuesday in a month with four Tuesdays", ->
    input = {
      year: 2013,
      month: 5,
      week: "last",
      dayofweek: "Tuesday"
    }
    expected = "2013-05-28"
    expect(meetup input).toEqual expected

  xit "last Tuesday in another month with four Tuesdays", ->
    input = {
      year: 2013,
      month: 6,
      week: "last",
      dayofweek: "Tuesday"
    }
    expected = "2013-06-25"
    expect(meetup input).toEqual expected

  xit "last Wednesday in a month with five Wednesdays", ->
    input = {
      year: 2013,
      month: 7,
      week: "last",
      dayofweek: "Wednesday"
    }
    expected = "2013-07-31"
    expect(meetup input).toEqual expected

  xit "last Wednesday in a month with four Wednesdays", ->
    input = {
      year: 2013,
      month: 8,
      week: "last",
      dayofweek: "Wednesday"
    }
    expected = "2013-08-28"
    expect(meetup input).toEqual expected

  xit "last Thursday in a month with four Thursdays", ->
    input = {
      year: 2013,
      month: 9,
      week: "last",
      dayofweek: "Thursday"
    }
    expected = "2013-09-26"
    expect(meetup input).toEqual expected

  xit "last Thursday in a month with five Thursdays", ->
    input = {
      year: 2013,
      month: 10,
      week: "last",
      dayofweek: "Thursday"
    }
    expected = "2013-10-31"
    expect(meetup input).toEqual expected

  xit "last Friday in a month with five Fridays", ->
    input = {
      year: 2013,
      month: 11,
      week: "last",
      dayofweek: "Friday"
    }
    expected = "2013-11-29"
    expect(meetup input).toEqual expected

  xit "last Friday in a month with four Fridays", ->
    input = {
      year: 2013,
      month: 12,
      week: "last",
      dayofweek: "Friday"
    }
    expected = "2013-12-27"
    expect(meetup input).toEqual expected

  xit "last Saturday in a month with four Saturdays", ->
    input = {
      year: 2013,
      month: 1,
      week: "last",
      dayofweek: "Saturday"
    }
    expected = "2013-01-26"
    expect(meetup input).toEqual expected

  xit "last Saturday in another month with four Saturdays", ->
    input = {
      year: 2013,
      month: 2,
      week: "last",
      dayofweek: "Saturday"
    }
    expected = "2013-02-23"
    expect(meetup input).toEqual expected

  xit "last Sunday in a month with five Sundays", ->
    input = {
      year: 2013,
      month: 3,
      week: "last",
      dayofweek: "Sunday"
    }
    expected = "2013-03-31"
    expect(meetup input).toEqual expected

  xit "last Sunday in a month with four Sundays", ->
    input = {
      year: 2013,
      month: 4,
      week: "last",
      dayofweek: "Sunday"
    }
    expected = "2013-04-28"
    expect(meetup input).toEqual expected

  xit "when last Wednesday in February in a leap year is the 29th", ->
    input = {
      year: 2012,
      month: 2,
      week: "last",
      dayofweek: "Wednesday"
    }
    expected = "2012-02-29"
    expect(meetup input).toEqual expected

  xit "last Wednesday in December that is also the last day of the year", ->
    input = {
      year: 2014,
      month: 12,
      week: "last",
      dayofweek: "Wednesday"
    }
    expected = "2014-12-31"
    expect(meetup input).toEqual expected

  xit "when last Sunday in February in a non-leap year is not the 29th", ->
    input = {
      year: 2015,
      month: 2,
      week: "last",
      dayofweek: "Sunday"
    }
    expected = "2015-02-22"
    expect(meetup input).toEqual expected

  xit "when first Friday is the 7th, the last day of the first week", ->
    input = {
      year: 2012,
      month: 12,
      week: "first",
      dayofweek: "Friday"
    }
    expected = "2012-12-07"
    expect(meetup input).toEqual expected
