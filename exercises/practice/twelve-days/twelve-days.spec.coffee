TwelveDays = require './twelve-days'

describe "Twelve Days", ->
  it 'first day a partridge in a pear tree', ->
    expected = [
      'On the first day of Christmas my true love gave to me:'
      'a Partridge in a Pear Tree.'
    ].join ' '
    expect(TwelveDays.recite 1, 1).toEqual expected

  xit 'second day two turtle doves', ->
    expected = [
      'On the second day of Christmas my true love gave to me:'
      'two Turtle Doves,'
      'and a Partridge in a Pear Tree.'
    ].join ' '
    expect(TwelveDays.recite 2, 2).toEqual expected

  xit 'third day three french hens', ->
    expected = [
      'On the third day of Christmas my true love gave to me:'
      'three French Hens,'
      'two Turtle Doves,'
      'and a Partridge in a Pear Tree.'
    ].join ' '
    expect(TwelveDays.recite 3, 3).toEqual expected

  xit 'fourth day four calling birds', ->
    expected = [
      'On the fourth day of Christmas my true love gave to me:'
      'four Calling Birds,'
      'three French Hens,'
      'two Turtle Doves,'
      'and a Partridge in a Pear Tree.'
    ].join ' '
    expect(TwelveDays.recite 4, 4).toEqual expected

  xit 'fifth day five gold rings', ->
    expected = [
      'On the fifth day of Christmas my true love gave to me:'
      'five Gold Rings,'
      'four Calling Birds,'
      'three French Hens,'
      'two Turtle Doves,'
      'and a Partridge in a Pear Tree.'
    ].join ' '
    expect(TwelveDays.recite 5, 5).toEqual expected

  xit 'sixth day six geese-a-laying', ->
    expected = [
      'On the sixth day of Christmas my true love gave to me:'
      'six Geese-a-Laying,'
      'five Gold Rings,'
      'four Calling Birds,'
      'three French Hens,'
      'two Turtle Doves,'
      'and a Partridge in a Pear Tree.'
    ].join ' '
    expect(TwelveDays.recite 6, 6).toEqual expected

  xit 'seventh day seven swans-a-swimming', ->
    expected = [
      'On the seventh day of Christmas my true love gave to me:'
      'seven Swans-a-Swimming,'
      'six Geese-a-Laying,'
      'five Gold Rings,'
      'four Calling Birds,'
      'three French Hens,'
      'two Turtle Doves,'
      'and a Partridge in a Pear Tree.'
    ].join ' '
    expect(TwelveDays.recite 7, 7).toEqual expected

  xit 'eighth day eight maids-a-milking', ->
    expected = [
      'On the eighth day of Christmas my true love gave to me:'
      'eight Maids-a-Milking,'
      'seven Swans-a-Swimming,'
      'six Geese-a-Laying,'
      'five Gold Rings,'
      'four Calling Birds,'
      'three French Hens,'
      'two Turtle Doves,'
      'and a Partridge in a Pear Tree.'
    ].join ' '
    expect(TwelveDays.recite 8, 8).toEqual expected

  xit 'ninth day nine ladies dancing', ->
    expected = [
      'On the ninth day of Christmas my true love gave to me:'
      'nine Ladies Dancing,'
      'eight Maids-a-Milking,'
      'seven Swans-a-Swimming,'
      'six Geese-a-Laying,'
      'five Gold Rings,'
      'four Calling Birds,'
      'three French Hens,'
      'two Turtle Doves,'
      'and a Partridge in a Pear Tree.'
    ].join ' '
    expect(TwelveDays.recite 9, 9).toEqual expected

  xit 'tenth day ten lords-a-leaping', ->
    expected = [
      'On the tenth day of Christmas my true love gave to me:'
      'ten Lords-a-Leaping,'
      'nine Ladies Dancing,'
      'eight Maids-a-Milking,'
      'seven Swans-a-Swimming,'
      'six Geese-a-Laying,'
      'five Gold Rings,'
      'four Calling Birds,'
      'three French Hens,'
      'two Turtle Doves,'
      'and a Partridge in a Pear Tree.'
    ].join ' '
    expect(TwelveDays.recite 10, 10).toEqual expected

  xit 'eleventh day eleven pipers piping', ->
    expected = [
      'On the eleventh day of Christmas my true love gave to me:'
      'eleven Pipers Piping,'
      'ten Lords-a-Leaping,'
      'nine Ladies Dancing,'
      'eight Maids-a-Milking,'
      'seven Swans-a-Swimming,'
      'six Geese-a-Laying,'
      'five Gold Rings,'
      'four Calling Birds,'
      'three French Hens,'
      'two Turtle Doves,'
      'and a Partridge in a Pear Tree.'
    ].join ' '
    expect(TwelveDays.recite 11, 11).toEqual expected

  xit 'twelfth day twelve drummers drumming', ->
    expected = [
      'On the twelfth day of Christmas my true love gave to me:'
      'twelve Drummers Drumming,'
      'eleven Pipers Piping,'
      'ten Lords-a-Leaping,'
      'nine Ladies Dancing,'
      'eight Maids-a-Milking,'
      'seven Swans-a-Swimming,'
      'six Geese-a-Laying,'
      'five Gold Rings,'
      'four Calling Birds,'
      'three French Hens,'
      'two Turtle Doves,'
      'and a Partridge in a Pear Tree.'
    ].join ' '
    expect(TwelveDays.recite 12, 12).toEqual expected

  xit 'recites first three verses of the song', ->
    expected = [
      [
        'On the first day of Christmas my true love gave to me:'
        'a Partridge in a Pear Tree.'
      ].join ' '
      [
        'On the second day of Christmas my true love gave to me:'
        'two Turtle Doves,'
        'and a Partridge in a Pear Tree.'
      ].join ' '
      [
        'On the third day of Christmas my true love gave to me:'
        'three French Hens,'
        'two Turtle Doves,'
        'and a Partridge in a Pear Tree.'
      ].join ' '
    ].join '\n'
    expect(TwelveDays.recite 1, 3).toEqual expected

  xit 'recites three verses from the middle of the song', ->
    expected = [
      [
        'On the fourth day of Christmas my true love gave to me:'
        'four Calling Birds,'
        'three French Hens,'
        'two Turtle Doves,'
        'and a Partridge in a Pear Tree.'
      ].join ' '
      [
        'On the fifth day of Christmas my true love gave to me:'
        'five Gold Rings,'
        'four Calling Birds,'
        'three French Hens,'
        'two Turtle Doves,'
        'and a Partridge in a Pear Tree.'
      ].join ' '
      [
        'On the sixth day of Christmas my true love gave to me:'
        'six Geese-a-Laying,'
        'five Gold Rings,'
        'four Calling Birds,'
        'three French Hens,'
        'two Turtle Doves,'
        'and a Partridge in a Pear Tree.'
      ].join ' '
    ].join '\n'
    expect(TwelveDays.recite 4, 6).toEqual expected

  xit 'recites the whole song', ->
    expected = [
      [
        'On the first day of Christmas my true love gave to me:'
        'a Partridge in a Pear Tree.'
      ].join ' '
      [
        'On the second day of Christmas my true love gave to me:'
        'two Turtle Doves,'
        'and a Partridge in a Pear Tree.'
      ].join ' '
      [
        'On the third day of Christmas my true love gave to me:'
        'three French Hens,'
        'two Turtle Doves,'
        'and a Partridge in a Pear Tree.'
      ].join ' '
      [
        'On the fourth day of Christmas my true love gave to me:'
        'four Calling Birds,'
        'three French Hens,'
        'two Turtle Doves,'
        'and a Partridge in a Pear Tree.'
      ].join ' '
      [
        'On the fifth day of Christmas my true love gave to me:'
        'five Gold Rings,'
        'four Calling Birds,'
        'three French Hens,'
        'two Turtle Doves,'
        'and a Partridge in a Pear Tree.'
      ].join ' '
      [
        'On the sixth day of Christmas my true love gave to me:'
        'six Geese-a-Laying,'
        'five Gold Rings,'
        'four Calling Birds,'
        'three French Hens,'
        'two Turtle Doves,'
        'and a Partridge in a Pear Tree.'
      ].join ' '
      [
        'On the seventh day of Christmas my true love gave to me:'
        'seven Swans-a-Swimming,'
        'six Geese-a-Laying,'
        'five Gold Rings,'
        'four Calling Birds,'
        'three French Hens,'
        'two Turtle Doves,'
        'and a Partridge in a Pear Tree.'
      ].join ' '
      [
        'On the eighth day of Christmas my true love gave to me:'
        'eight Maids-a-Milking,'
        'seven Swans-a-Swimming,'
        'six Geese-a-Laying,'
        'five Gold Rings,'
        'four Calling Birds,'
        'three French Hens,'
        'two Turtle Doves,'
        'and a Partridge in a Pear Tree.'
      ].join ' '
      [
        'On the ninth day of Christmas my true love gave to me:'
        'nine Ladies Dancing,'
        'eight Maids-a-Milking,'
        'seven Swans-a-Swimming,'
        'six Geese-a-Laying,'
        'five Gold Rings,'
        'four Calling Birds,'
        'three French Hens,'
        'two Turtle Doves,'
        'and a Partridge in a Pear Tree.'
      ].join ' '
      [
        'On the tenth day of Christmas my true love gave to me:'
        'ten Lords-a-Leaping,'
        'nine Ladies Dancing,'
        'eight Maids-a-Milking,'
        'seven Swans-a-Swimming,'
        'six Geese-a-Laying,'
        'five Gold Rings,'
        'four Calling Birds,'
        'three French Hens,'
        'two Turtle Doves,'
        'and a Partridge in a Pear Tree.'
      ].join ' '
      [
        'On the eleventh day of Christmas my true love gave to me:'
        'eleven Pipers Piping,'
        'ten Lords-a-Leaping,'
        'nine Ladies Dancing,'
        'eight Maids-a-Milking,'
        'seven Swans-a-Swimming,'
        'six Geese-a-Laying,'
        'five Gold Rings,'
        'four Calling Birds,'
        'three French Hens,'
        'two Turtle Doves,'
        'and a Partridge in a Pear Tree.'
      ].join ' '
      [
        'On the twelfth day of Christmas my true love gave to me:'
        'twelve Drummers Drumming,'
        'eleven Pipers Piping,'
        'ten Lords-a-Leaping,'
        'nine Ladies Dancing,'
        'eight Maids-a-Milking,'
        'seven Swans-a-Swimming,'
        'six Geese-a-Laying,'
        'five Gold Rings,'
        'four Calling Birds,'
        'three French Hens,'
        'two Turtle Doves,'
        'and a Partridge in a Pear Tree.'
      ].join ' '
    ].join '\n'
    expect(TwelveDays.recite 1, 12).toEqual expected
