BankAccount = require './bank-account'

describe 'BankAccount', ->
  it 'Newly opened account has zero balance', ->
    bankAccount = new BankAccount
    bankAccount.open()
    expect(bankAccount.balance()).toEqual 0

  xit "Single deposit", ->
    bankAccount = new BankAccount
    bankAccount.open()
    bankAccount.deposit 100
    expect(bankAccount.balance()).toEqual 100

  xit "Multiple deposits", ->
    bankAccount = new BankAccount
    bankAccount.open()
    bankAccount.deposit 100
    bankAccount.deposit 50
    expect(bankAccount.balance()).toEqual 150

  xit "Withdraw once", ->
    bankAccount = new BankAccount
    bankAccount.open()
    bankAccount.deposit 100
    bankAccount.withdraw 75
    expect(bankAccount.balance()).toEqual 25

  xit "Withdraw twice", ->
    bankAccount = new BankAccount
    bankAccount.open()
    bankAccount.deposit 100
    bankAccount.withdraw 80
    bankAccount.withdraw 20
    expect(bankAccount.balance()).toEqual 0

  xit "Can do multiple operations sequentially", ->
    bankAccount = new BankAccount
    bankAccount.open()
    bankAccount.deposit 100
    bankAccount.deposit 110
    bankAccount.withdraw 200
    bankAccount.deposit 60
    bankAccount.withdraw 50
    expect(bankAccount.balance()).toEqual 20

  xit "Cannot check balance of closed account", ->
    bankAccount = new BankAccount
    bankAccount.open()
    bankAccount.close()
    expect( -> bankAccount.balance()).toThrow "account not open"

  xit "Cannot deposit into closed account", ->
    bankAccount = new BankAccount
    bankAccount.open()
    bankAccount.close()
    expect( -> bankAccount.deposit 50).toThrow "account not open"

  xit "Cannot deposit into unopened account", ->
    bankAccount = new BankAccount
    expect( -> bankAccount.deposit 50).toThrow "account not open"

  xit "Cannot withdraw from closed account", ->
    bankAccount = new BankAccount
    bankAccount.open()
    bankAccount.close()
    expect( -> bankAccount.withdraw 50).toThrow "account not open"

  xit "Cannot close an account that was not opened", ->
    bankAccount = new BankAccount
    expect( -> bankAccount.close()).toThrow "account not open"

  xit "Cannot open an already opened account", ->
    bankAccount = new BankAccount
    bankAccount.open()
    expect( -> bankAccount.open()).toThrow "account already open"


  xit "Reopened account does not retain balance", ->
    bankAccount = new BankAccount
    bankAccount.open()
    bankAccount.deposit 50
    bankAccount.close()
    bankAccount.open()
    expect(bankAccount.balance()).toEqual 0

  xit "Cannot withdraw more than deposited", ->
    bankAccount = new BankAccount
    bankAccount.open()
    bankAccount.deposit 25
    expect( -> bankAccount.withdraw 50).toThrow "amount must be less than balance"

  xit "Cannot withdraw negative", ->
    bankAccount = new BankAccount
    bankAccount.open()
    bankAccount.deposit 100
    expect( -> bankAccount.withdraw -50).toThrow "amount must be greater than 0"

  xit "Cannot deposit negative", ->
    bankAccount = new BankAccount
    bankAccount.open()
    expect( -> bankAccount.deposit -50).toThrow "amount must be greater than 0"

