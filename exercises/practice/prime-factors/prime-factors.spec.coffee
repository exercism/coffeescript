PrimeFactors = require './prime-factors'

describe 'Prime Factors', ->
  it 'no factors', ->
    expect(PrimeFactors.factors 1).toEqual []

  xit 'prime number', ->
    expect(PrimeFactors.factors 2).toEqual [2]

  xit 'another prime number', ->
    expect(PrimeFactors.factors 3).toEqual [3]

  xit 'square of a prime', ->
    expect(PrimeFactors.factors 9).toEqual [3, 3]

  xit 'product of first prime', ->
    expect(PrimeFactors.factors 4).toEqual [2, 2]

  xit 'cube of a prime', ->
    expect(PrimeFactors.factors 8).toEqual [2, 2, 2]

  xit 'product of second prime', ->
    expect(PrimeFactors.factors 27).toEqual [3, 3, 3]

  xit 'product of third prime', ->
    expect(PrimeFactors.factors 625).toEqual [5, 5, 5, 5]

  xit 'product of first and second prime', ->
    expect(PrimeFactors.factors 6).toEqual [2, 3]

  xit 'product of primes and non-primes', ->
    expect(PrimeFactors.factors 12).toEqual [2, 2, 3]

  xit 'product of primes', ->
    expect(PrimeFactors.factors 901255).toEqual [5, 17, 23, 461]

  xit 'factors include a large prime', ->
    expect(PrimeFactors.factors 93819012551).toEqual [11, 9539, 894119]
