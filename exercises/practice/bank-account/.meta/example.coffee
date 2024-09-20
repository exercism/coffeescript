class BankAccount
  constructor: ->
    @_open = false

  open: ->
    throw Error 'account already open' if @_open
    @_open = true
    @_balance = 0

  close: ->
    throw Error 'account not open' unless @_open
    @_open = false

  balance: ->
    throw Error 'account not open' unless @_open
    @_balance

  deposit: (money) ->
    throw Error 'account not open' unless @_open
    throw Error "amount must be greater than 0" unless money > 0
    @_balance += money

  withdraw: (money) ->
    throw Error 'account not open' unless @_open
    throw Error "amount must be greater than 0" unless money > 0
    throw Error "amount must be less than balance" unless money <= @_balance
    @_balance -= money

module.exports = BankAccount
