# These tests are auto-generated with test data from:
# https://github.com/exercism/problem-specifications/blob/main/exercises/allergies/canonical-data.json
# File last updated on 2026-10-29T04:39:31+00:00

Allergies = require './allergies'

describe "Allergies", ->
  describe "testing for eggs allergy", ->
    it "not allergic to anything", ->
      allergies = new Allergies 0
      expect(allergies.allergicTo "eggs").toEqual false

    xit "allergic only to eggs", ->
      allergies = new Allergies 1
      expect(allergies.allergicTo "eggs").toEqual true

    xit "allergic to eggs and something else", ->
      allergies = new Allergies 3
      expect(allergies.allergicTo "eggs").toEqual true

    xit "allergic to something, but not eggs", ->
      allergies = new Allergies 2
      expect(allergies.allergicTo "eggs").toEqual false

    xit "allergic to everything", ->
      allergies = new Allergies 255
      expect(allergies.allergicTo "eggs").toEqual true

  describe "testing for peanuts allergy", ->
    xit "not allergic to anything", ->
      allergies = new Allergies 0
      expect(allergies.allergicTo "peanuts").toEqual false

    xit "allergic only to peanuts", ->
      allergies = new Allergies 2
      expect(allergies.allergicTo "peanuts").toEqual true

    xit "allergic to peanuts and something else", ->
      allergies = new Allergies 7
      expect(allergies.allergicTo "peanuts").toEqual true

    xit "allergic to something, but not peanuts", ->
      allergies = new Allergies 5
      expect(allergies.allergicTo "peanuts").toEqual false

    xit "allergic to everything", ->
      allergies = new Allergies 255
      expect(allergies.allergicTo "peanuts").toEqual true

  describe "testing for shellfish allergy", ->
    xit "not allergic to anything", ->
      allergies = new Allergies 0
      expect(allergies.allergicTo "shellfish").toEqual false

    xit "allergic only to shellfish", ->
      allergies = new Allergies 4
      expect(allergies.allergicTo "shellfish").toEqual true

    xit "allergic to shellfish and something else", ->
      allergies = new Allergies 14
      expect(allergies.allergicTo "shellfish").toEqual true

    xit "allergic to something, but not shellfish", ->
      allergies = new Allergies 10
      expect(allergies.allergicTo "shellfish").toEqual false

    xit "allergic to everything", ->
      allergies = new Allergies 255
      expect(allergies.allergicTo "shellfish").toEqual true

  describe "testing for strawberries allergy", ->
    xit "not allergic to anything", ->
      allergies = new Allergies 0
      expect(allergies.allergicTo "strawberries").toEqual false

    xit "allergic only to strawberries", ->
      allergies = new Allergies 8
      expect(allergies.allergicTo "strawberries").toEqual true

    xit "allergic to strawberries and something else", ->
      allergies = new Allergies 28
      expect(allergies.allergicTo "strawberries").toEqual true

    xit "allergic to something, but not strawberries", ->
      allergies = new Allergies 20
      expect(allergies.allergicTo "strawberries").toEqual false

    xit "allergic to everything", ->
      allergies = new Allergies 255
      expect(allergies.allergicTo "strawberries").toEqual true

  describe "testing for tomatoes allergy", ->
    xit "not allergic to anything", ->
      allergies = new Allergies 0
      expect(allergies.allergicTo "tomatoes").toEqual false

    xit "allergic only to tomatoes", ->
      allergies = new Allergies 16
      expect(allergies.allergicTo "tomatoes").toEqual true

    xit "allergic to tomatoes and something else", ->
      allergies = new Allergies 56
      expect(allergies.allergicTo "tomatoes").toEqual true

    xit "allergic to something, but not tomatoes", ->
      allergies = new Allergies 40
      expect(allergies.allergicTo "tomatoes").toEqual false

    xit "allergic to everything", ->
      allergies = new Allergies 255
      expect(allergies.allergicTo "tomatoes").toEqual true

  describe "testing for chocolate allergy", ->
    xit "not allergic to anything", ->
      allergies = new Allergies 0
      expect(allergies.allergicTo "chocolate").toEqual false

    xit "allergic only to chocolate", ->
      allergies = new Allergies 32
      expect(allergies.allergicTo "chocolate").toEqual true

    xit "allergic to chocolate and something else", ->
      allergies = new Allergies 112
      expect(allergies.allergicTo "chocolate").toEqual true

    xit "allergic to something, but not chocolate", ->
      allergies = new Allergies 80
      expect(allergies.allergicTo "chocolate").toEqual false

    xit "allergic to everything", ->
      allergies = new Allergies 255
      expect(allergies.allergicTo "chocolate").toEqual true

  describe "testing for pollen allergy", ->
    xit "not allergic to anything", ->
      allergies = new Allergies 0
      expect(allergies.allergicTo "pollen").toEqual false

    xit "allergic only to pollen", ->
      allergies = new Allergies 64
      expect(allergies.allergicTo "pollen").toEqual true

    xit "allergic to pollen and something else", ->
      allergies = new Allergies 224
      expect(allergies.allergicTo "pollen").toEqual true

    xit "allergic to something, but not pollen", ->
      allergies = new Allergies 160
      expect(allergies.allergicTo "pollen").toEqual false

    xit "allergic to everything", ->
      allergies = new Allergies 255
      expect(allergies.allergicTo "pollen").toEqual true

  describe "testing for cats allergy", ->
    xit "not allergic to anything", ->
      allergies = new Allergies 0
      expect(allergies.allergicTo "cats").toEqual false

    xit "allergic only to cats", ->
      allergies = new Allergies 128
      expect(allergies.allergicTo "cats").toEqual true

    xit "allergic to cats and something else", ->
      allergies = new Allergies 192
      expect(allergies.allergicTo "cats").toEqual true

    xit "allergic to something, but not cats", ->
      allergies = new Allergies 64
      expect(allergies.allergicTo "cats").toEqual false

    xit "allergic to everything", ->
      allergies = new Allergies 255
      expect(allergies.allergicTo "cats").toEqual true

  describe "list when:", ->
    xit "no allergies", ->
      allergies = new Allergies 0
      expected = [
      ]
      expect(allergies.list()).toEqual expected

    xit "just eggs", ->
      allergies = new Allergies 1
      expected = [
        "eggs"
      ]
      expect(allergies.list()).toEqual expected

    xit "just peanuts", ->
      allergies = new Allergies 2
      expected = [
        "peanuts"
      ]
      expect(allergies.list()).toEqual expected

    xit "just strawberries", ->
      allergies = new Allergies 8
      expected = [
        "strawberries"
      ]
      expect(allergies.list()).toEqual expected

    xit "eggs and peanuts", ->
      allergies = new Allergies 3
      expected = [
        "eggs"
        "peanuts"
      ]
      expect(allergies.list()).toEqual expected

    xit "more than eggs but not peanuts", ->
      allergies = new Allergies 5
      expected = [
        "eggs"
        "shellfish"
      ]
      expect(allergies.list()).toEqual expected

    xit "lots of stuff", ->
      allergies = new Allergies 248
      expected = [
        "strawberries"
        "tomatoes"
        "chocolate"
        "pollen"
        "cats"
      ]
      expect(allergies.list()).toEqual expected

    xit "everything", ->
      allergies = new Allergies 255
      expected = [
        "eggs"
        "peanuts"
        "shellfish"
        "strawberries"
        "tomatoes"
        "chocolate"
        "pollen"
        "cats"
      ]
      expect(allergies.list()).toEqual expected

    xit "no allergen score parts", ->
      allergies = new Allergies 509
      expected = [
        "eggs"
        "shellfish"
        "strawberries"
        "tomatoes"
        "chocolate"
        "pollen"
        "cats"
      ]
      expect(allergies.list()).toEqual expected

    xit "no allergen score parts without highest valid score", ->
      allergies = new Allergies 257
      expected = [
        "eggs"
      ]
      expect(allergies.list()).toEqual expected
