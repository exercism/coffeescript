class TwelveDays
  @recite: (startVerse, endVerse) ->
    [startVerse..endVerse].map (verse) =>
      gifts = @availableGifts[0..verse-1].reverse()
      if verse > 1
          gifts[gifts.length - 1] = "and #{gifts[gifts.length - 1]}"
      "On the #{@days[verse-1]} day of Christmas my true love gave to me: #{gifts.join ' '}"
    .join '\n'

  @availableGifts: [
    'a Partridge in a Pear Tree.'
    'two Turtle Doves,'
    'three French Hens,'
    'four Calling Birds,'
    'five Gold Rings,'
    'six Geese-a-Laying,'
    'seven Swans-a-Swimming,'
    'eight Maids-a-Milking,'
    'nine Ladies Dancing,'
    'ten Lords-a-Leaping,'
    'eleven Pipers Piping,'
    'twelve Drummers Drumming,'
  ]

  @days: [
    'first'
    'second'
    'third'
    'fourth'
    'fifth'
    'sixth',
    'seventh'
    'eighth'
    'ninth'
    'tenth'
    'eleventh'
    'twelfth'
  ]

module.exports = TwelveDays
