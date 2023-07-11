class PhoneNumber
  constructor: (@number) ->

  clean: ->
    if @number.match /[a-zA-Z]/
      throw new Error "letters not permitted"
    else if @number.match /[@:!]/g
      throw new Error "punctuations not permitted"
    @cleanNumber = @number.replace /[^\d]/g, ''
    if @cleanNumber.length == 11 and @cleanNumber[0] != '1'
      throw new Error "11 digits must start with 1"
    else if @cleanNumber.length == 11
      @cleanNumber = @cleanNumber.slice 1
    else if @cleanNumber.length > 11
      throw new Error "must not be more than 11 digits"
    if @cleanNumber.length < 10
      throw new Error "must not be fewer than 10 digits"

    if @cleanNumber[0] == '0'
      throw new Error "area code cannot start with zero"
    else if @cleanNumber[0] == '1'
      throw new Error "area code cannot start with one"
    else if @cleanNumber[3] == '0'
      throw new Error "exchange code cannot start with zero"
    else if @cleanNumber[3] == '1'
      throw new Error "exchange code cannot start with one"
    @cleanNumber

module.exports = PhoneNumber
