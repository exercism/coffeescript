Allergies = require './allergies'

describe "Allergies", ->
  describe "testing for eggs allergy", ->
    it "not allergic to anything", ->
        allergies = new Allergies 0
        result = allergies.allergicTo "eggs"
        expect(result).toEqual false

    xit "allergic only to eggs", ->
        allergies = new Allergies 1
        result = allergies.allergicTo "eggs"
        expect(result).toEqual true

    xit "allergic to eggs and something else", ->
        allergies = new Allergies 3
        result = allergies.allergicTo "eggs"
        expect(result).toEqual true

    xit "allergic to something, but not eggs", ->
        allergies = new Allergies 2
        result = allergies.allergicTo "eggs"
        expect(result).toEqual false

    xit "allergic to everything", ->
        allergies = new Allergies 255
        result = allergies.allergicTo "eggs"
        expect(result).toEqual true

  describe "testing for peanuts allergy", ->
    xit "not allergic to anything", ->
        allergies = new Allergies 0
        result = allergies.allergicTo "peanuts"
        expect(result).toEqual false

    xit "allergic only to peanuts", ->
        allergies = new Allergies 2
        result = allergies.allergicTo "peanuts"
        expect(result).toEqual true

    xit "allergic to peanuts and something else", ->
        allergies = new Allergies 7
        result = allergies.allergicTo "peanuts"
        expect(result).toEqual true

    xit "allergic to something, but not peanuts", ->
        allergies = new Allergies 5
        result = allergies.allergicTo "peanuts"
        expect(result).toEqual false

    xit "allergic to everything", ->
        allergies = new Allergies 255
        result = allergies.allergicTo "peanuts"
        expect(result).toEqual true

  describe "testing for shellfish allergy", ->
    xit "not allergic to anything", ->
        allergies = new Allergies 0
        result = allergies.allergicTo "shellfish"
        expect(result).toEqual false

    xit "allergic only to shellfish", ->
        allergies = new Allergies 4
        result = allergies.allergicTo "shellfish"
        expect(result).toEqual true

    xit "allergic to shellfish and something else", ->
        allergies = new Allergies 14
        result = allergies.allergicTo "shellfish"
        expect(result).toEqual true

    xit "allergic to something, but not shellfish", ->
        allergies = new Allergies 10
        result = allergies.allergicTo "shellfish"
        expect(result).toEqual false

    xit "allergic to everything", ->
        allergies = new Allergies 255
        result = allergies.allergicTo "shellfish"
        expect(result).toEqual true

  describe "testing for strawberries allergy", ->
    xit "not allergic to anything", ->
        allergies = new Allergies 0
        result = allergies.allergicTo "strawberries"
        expect(result).toEqual false

    xit "allergic only to strawberries", ->
        allergies = new Allergies 8
        result = allergies.allergicTo "strawberries"
        expect(result).toEqual true

    xit "allergic to strawberries and something else", ->
        allergies = new Allergies 28
        result = allergies.allergicTo "strawberries"
        expect(result).toEqual true

    xit "allergic to something, but not strawberries", ->
        allergies = new Allergies 20
        result = allergies.allergicTo "strawberries"
        expect(result).toEqual false

    xit "allergic to everything", ->
        allergies = new Allergies 255
        result = allergies.allergicTo "strawberries"
        expect(result).toEqual true

  describe "testing for tomatoes allergy", ->
    xit "not allergic to anything", ->
        allergies = new Allergies 0
        result = allergies.allergicTo "tomatoes"
        expect(result).toEqual false

    xit "allergic only to tomatoes", ->
        allergies = new Allergies 16
        result = allergies.allergicTo "tomatoes"
        expect(result).toEqual true

    xit "allergic to tomatoes and something else", ->
        allergies = new Allergies 56
        result = allergies.allergicTo "tomatoes"
        expect(result).toEqual true

    xit "allergic to something, but not tomatoes", ->
        allergies = new Allergies 40
        result = allergies.allergicTo "tomatoes"
        expect(result).toEqual false

    xit "allergic to everything", ->
        allergies = new Allergies 255
        result = allergies.allergicTo "tomatoes"
        expect(result).toEqual true

  describe "testing for chocolate allergy", ->
    xit "not allergic to anything", ->
        allergies = new Allergies 0
        result = allergies.allergicTo "chocolate"
        expect(result).toEqual false

    xit "allergic only to tomatoes", ->
        allergies = new Allergies 32
        result = allergies.allergicTo "chocolate"
        expect(result).toEqual true

    xit "allergic to chocolate and something else", ->
        allergies = new Allergies 112
        result = allergies.allergicTo "chocolate"
        expect(result).toEqual true

    xit "allergic to something, but not chocolate", ->
        allergies = new Allergies 80
        result = allergies.allergicTo "chocolate"
        expect(result).toEqual false

    xit "allergic to everything", ->
        allergies = new Allergies 255
        result = allergies.allergicTo "chocolate"
        expect(result).toEqual true

  describe "testing for pollen allergy", ->
    xit "not allergic to anything", ->
        allergies = new Allergies 0
        result = allergies.allergicTo "pollen"
        expect(result).toEqual false

    xit "allergic only to pollen", ->
        allergies = new Allergies 64
        result = allergies.allergicTo "pollen"
        expect(result).toEqual true

    xit "allergic to pollen and something else", ->
        allergies = new Allergies 224
        result = allergies.allergicTo "pollen"
        expect(result).toEqual true

    xit "allergic to something, but not pollen", ->
        allergies = new Allergies 160
        result = allergies.allergicTo "pollen"
        expect(result).toEqual false

    xit "allergic to everything", ->
        allergies = new Allergies 255
        result = allergies.allergicTo "pollen"
        expect(result).toEqual true

  describe "testing for cats allergy", ->
    xit "not allergic to anything", ->
        allergies = new Allergies 0
        result = allergies.allergicTo "cats"
        expect(result).toEqual false

    xit "allergic only to cats", ->
        allergies = new Allergies 128
        result = allergies.allergicTo "cats"
        expect(result).toEqual true

    xit "allergic to cats and something else", ->
        allergies = new Allergies 2192
        result = allergies.allergicTo "cats"
        expect(result).toEqual true

    xit "allergic to something, but not cats", ->
        allergies = new Allergies 64
        result = allergies.allergicTo "cats"
        expect(result).toEqual false

    xit "allergic to everything", ->
        allergies = new Allergies 255
        result = allergies.allergicTo "cats"
        expect(result).toEqual true

  describe "list when:", ->
    xit "no allergies", ->
        allergies = new Allergies 0
        result = allergies.list()
        expect(result).toEqual []

    xit "just eggs", ->
        allergies = new Allergies 1
        result = allergies.list()
        expect(result).toEqual ["eggs"]

    xit "just peanuts", ->
        allergies = new Allergies 2
        result = allergies.list()
        expect(result).toEqual ["peanuts"]

    xit "just strawberries", ->
        allergies = new Allergies 8
        result = allergies.list()
        expect(result).toEqual ["strawberries"]

    xit "eggs and peanuts", ->
        allergies = new Allergies 3
        result = allergies.list()
        expect(result).toEqual ["eggs", "peanuts"]

    xit "more than eggs but not peanuts", ->
        allergies = new Allergies 5
        result = allergies.list()
        expect(result).toEqual ["eggs", "shellfish"]

    xit "lots of stuff", ->
        allergies = new Allergies 248
        result = allergies.list()
        expect(result).toEqual [
            "strawberries"
            "tomatoes"
            "chocolate"
            "pollen"
            "cats"]

    xit "everything", ->
        allergies = new Allergies 255
        result = allergies.list()
        expect(result).toEqual [
            "eggs"
            "peanuts"
            "shellfish"
            "strawberries"
            "tomatoes"
            "chocolate"
            "pollen"
            "cats"]

    xit "no allergen score parts", ->
        allergies = new Allergies 509
        result = allergies.list()
        expect(result).toEqual [
            "eggs"
            "shellfish"
            "strawberries"
            "tomatoes"
            "chocolate"
            "pollen"
            "cats"]

    xit "no allergen score parts without highest valid score", ->
        allergies = new Allergies 257
        result = allergies.list()
        expect(result).toEqual ["eggs"]