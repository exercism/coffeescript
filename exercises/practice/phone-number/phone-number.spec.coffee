PhoneNumber = require './phone-number'

describe 'PhoneNumber', ->
  it 'cleans the number', ->
    phone = new PhoneNumber "(223) 456-7890"
    expect(phone.clean()).toEqual("2234567890")

  xit 'cleans numbers with dots', ->
    phone = new PhoneNumber "223.456.7890"
    expect(phone.clean()).toEqual("2234567890")

  xit 'cleans numbers with multiple spaces', ->
    phone = new PhoneNumber "223 456   7890   "
    expect(phone.clean()).toEqual("2234567890")

  xit 'invalid when 9 digits', ->
    phone = new PhoneNumber "123456789"
    expect ->
      phone.clean()
    .toThrow("must not be fewer than 10 digits")

  xit 'invalid when 11 digits does not start with a 1', ->
    phone = new PhoneNumber "22234567890"
    expect ->
      phone.clean()
    .toThrow("11 digits must start with 1")

  xit 'valid when 11 digits and starting with 1', ->
    phone = new PhoneNumber "12234567890"
    expect(phone.clean()).toEqual("2234567890")

  xit 'valid when 11 digits and starting with 1 even with punctuation', ->
    phone = new PhoneNumber "+1 (223) 456-7890"
    expect(phone.clean()).toEqual("2234567890")

  xit 'invalid when more than 11 digits', ->
    phone = new PhoneNumber "321234567890"
    expect ->
      phone.clean()
    .toThrow("must not be more than 11 digits")

  xit 'invalid with letters', ->
    phone = new PhoneNumber "523-abc-7890"
    expect ->
      phone.clean()
    .toThrow("letters not permitted")

  xit 'invalid with punctuations', ->
    phone = new PhoneNumber "523-@:!-7890"
    expect ->
      phone.clean()
    .toThrow("punctuations not permitted")

  xit 'invalid if area code starts with 0', ->
    phone = new PhoneNumber "(023) 456-7890"
    expect ->
      phone.clean()
    .toThrow("area code cannot start with zero")

  xit 'invalid if area code starts with 1', ->
    phone = new PhoneNumber "(123) 456-7890"
    expect ->
      phone.clean()
    .toThrow("area code cannot start with one")

  xit 'invalid if exchange code starts with 0', ->
    phone = new PhoneNumber "(223) 056-7890"
    expect ->
      phone.clean()
    .toThrow("exchange code cannot start with zero")

  xit 'invalid if exchange code starts with 1', ->
    phone = new PhoneNumber "(223) 156-7890"
    expect ->
      phone.clean()
    .toThrow("exchange code cannot start with one")

  xit 'invalid if area code starts with 0 on valid 11-digit number', ->
    phone = new PhoneNumber "1 (023) 456-7890"
    expect ->
      phone.clean()
    .toThrow("area code cannot start with zero")

  xit 'invalid if area code starts with 1 on valid 11-digit number', ->
    phone = new PhoneNumber "1 (123) 456-7890"
    expect ->
      phone.clean()
    .toThrow("area code cannot start with one")

  xit 'invalid if exchange code starts with 0 on valid 11-digit number', ->
    phone = new PhoneNumber "1 (223) 056-7890"
    expect ->
      phone.clean()
    .toThrow("exchange code cannot start with zero")

  xit 'invalid if exchange code starts with 1 on valid 11-digit number', ->
    phone = new PhoneNumber "1 (223) 156-7890"
    expect ->
      phone.clean()
    .toThrow("exchange code cannot start with one")
