PerfectNumbers = require './perfect-numbers'

describe 'Perfect Numbers', ->
  describe 'Perfect numbers', ->
    it 'Smallest perfect number is classified correctly', ->
      expect(PerfectNumbers.classify(6)).toEqual 'perfect'

    xit 'Medium perfect number is classified correctly', ->
      expect(PerfectNumbers.classify(28)).toEqual 'perfect'

    xit 'Large perfect number is classified correctly', ->
      expect(PerfectNumbers.classify(33550336)).toEqual 'perfect'

  describe 'Abundant numbers', ->
    xit 'Smallest abundant number is classified correctly', ->
      expect(PerfectNumbers.classify(12)).toEqual 'abundant'

    xit 'Medium abundant number is classified correctly', ->
      expect(PerfectNumbers.classify(30)).toEqual 'abundant'

    xit 'Large abundant number is classified correctly', ->
      expect(PerfectNumbers.classify(33550335)).toEqual 'abundant'

    xit 'Perfect square abundant number is classified correctly', ->
      expect(PerfectNumbers.classify(196)).toEqual 'abundant'

  describe 'Deficient numbers', ->
    xit 'Smallest prime deficient number is classified correctly', ->
      expect(PerfectNumbers.classify(2)).toEqual 'deficient'

    xit 'Smallest non-prime deficient number is classified correctly', ->
      expect(PerfectNumbers.classify(4)).toEqual 'deficient'

    xit 'Medium deficient number is classified correctly', ->
      expect(PerfectNumbers.classify(32)).toEqual 'deficient'

    xit 'Large deficient number is classified correctly', ->
      expect(PerfectNumbers.classify(33550337)).toEqual 'deficient'

    xit 'Edge case (no factors other than itself) is classified correctly', ->
      expect(PerfectNumbers.classify(1)).toEqual 'deficient'

  describe 'Invalid inputs', ->
    xit 'Zero is rejected (as it is not a positive integer)', ->
      expect ->
        PerfectNumbers.classify(0)
      .toThrow new Error('Classification is only possible for positive integers.')

    xit 'Negative integer is rejected (as it is not a positive integer)', ->
      expect ->
        PerfectNumbers.classify(-1)
      .toThrow new Error('Classification is only possible for positive integers.')
