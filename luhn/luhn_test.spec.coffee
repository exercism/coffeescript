Luhn = require './luhn'

describe 'Luhn', ->

  it "check digit", ->
    luhn = new Luhn(34567)
    expect(luhn.checkDigit).toEqual(7)

  xit "check digit again", ->
    luhn = new Luhn(91370)
    expect(luhn.checkDigit).toEqual(0)

  xit "addends", ->
    luhn = new Luhn(12121)
    expect(luhn.addends).toEqual([1, 4, 1, 4, 1])

  xit "too large added", ->
    luhn = new Luhn(8631)
    expect(luhn.addends).toEqual([7, 6, 6, 1])

  xit "checksum", ->
    luhn = new Luhn(4913)
    expect(luhn.checksum).toEqual(22)

  xit "checksum again", ->
    luhn = new Luhn(201773)
    expect(luhn.checksum).toEqual(21)

  xit "valid number", ->
    luhn = new Luhn(738)
    expect(luhn.valid).toEqual(false)

  xit "invalid number", ->
    luhn = new Luhn(8739567)
    expect(luhn.valid).toEqual(true)

  xit "create valid number", ->
    number = Luhn.create(123)
    expect(number).toEqual(1230)

  xit "create other valid number", ->
    number = Luhn.create(873956)
    expect(number).toEqual(8739567)

  xit "create yet another valid number", ->
    number = Luhn.create(837263756)
    expect(number).toEqual(8372637564)
