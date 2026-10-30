# These tests are auto-generated with test data from:
# https://github.com/exercism/problem-specifications/blob/main/exercises/bottle-song/canonical-data.json
# File last updated on 2026-10-30T16:44:09+00:00

BottleSong = require './bottle-song'

describe "Bottle Song", ->
  describe "verse", ->
    describe "single verse", ->
      it "first generic verse", ->
        bottleSong = new BottleSong
        expected = [
          "Ten green bottles hanging on the wall,"
          "Ten green bottles hanging on the wall,"
          "And if one green bottle should accidentally fall,"
          "There'll be nine green bottles hanging on the wall."
        ]
        expect(bottleSong.recite 10, 1).toEqual expected

      xit "last generic verse", ->
        bottleSong = new BottleSong
        expected = [
          "Three green bottles hanging on the wall,"
          "Three green bottles hanging on the wall,"
          "And if one green bottle should accidentally fall,"
          "There'll be two green bottles hanging on the wall."
        ]
        expect(bottleSong.recite 3, 1).toEqual expected

      xit "verse with 2 bottles", ->
        bottleSong = new BottleSong
        expected = [
          "Two green bottles hanging on the wall,"
          "Two green bottles hanging on the wall,"
          "And if one green bottle should accidentally fall,"
          "There'll be one green bottle hanging on the wall."
        ]
        expect(bottleSong.recite 2, 1).toEqual expected

      xit "verse with 1 bottle", ->
        bottleSong = new BottleSong
        expected = [
          "One green bottle hanging on the wall,"
          "One green bottle hanging on the wall,"
          "And if one green bottle should accidentally fall,"
          "There'll be no green bottles hanging on the wall."
        ]
        expect(bottleSong.recite 1, 1).toEqual expected

  describe "lyrics", ->
    describe "multiple verses", ->
      xit "first two verses", ->
        bottleSong = new BottleSong
        expected = [
          "Ten green bottles hanging on the wall,"
          "Ten green bottles hanging on the wall,"
          "And if one green bottle should accidentally fall,"
          "There'll be nine green bottles hanging on the wall."
          ""
          "Nine green bottles hanging on the wall,"
          "Nine green bottles hanging on the wall,"
          "And if one green bottle should accidentally fall,"
          "There'll be eight green bottles hanging on the wall."
        ]
        expect(bottleSong.recite 10, 2).toEqual expected

      xit "last three verses", ->
        bottleSong = new BottleSong
        expected = [
          "Three green bottles hanging on the wall,"
          "Three green bottles hanging on the wall,"
          "And if one green bottle should accidentally fall,"
          "There'll be two green bottles hanging on the wall."
          ""
          "Two green bottles hanging on the wall,"
          "Two green bottles hanging on the wall,"
          "And if one green bottle should accidentally fall,"
          "There'll be one green bottle hanging on the wall."
          ""
          "One green bottle hanging on the wall,"
          "One green bottle hanging on the wall,"
          "And if one green bottle should accidentally fall,"
          "There'll be no green bottles hanging on the wall."
        ]
        expect(bottleSong.recite 3, 3).toEqual expected

      xit "all verses", ->
        bottleSong = new BottleSong
        expected = [
          "Ten green bottles hanging on the wall,"
          "Ten green bottles hanging on the wall,"
          "And if one green bottle should accidentally fall,"
          "There'll be nine green bottles hanging on the wall."
          ""
          "Nine green bottles hanging on the wall,"
          "Nine green bottles hanging on the wall,"
          "And if one green bottle should accidentally fall,"
          "There'll be eight green bottles hanging on the wall."
          ""
          "Eight green bottles hanging on the wall,"
          "Eight green bottles hanging on the wall,"
          "And if one green bottle should accidentally fall,"
          "There'll be seven green bottles hanging on the wall."
          ""
          "Seven green bottles hanging on the wall,"
          "Seven green bottles hanging on the wall,"
          "And if one green bottle should accidentally fall,"
          "There'll be six green bottles hanging on the wall."
          ""
          "Six green bottles hanging on the wall,"
          "Six green bottles hanging on the wall,"
          "And if one green bottle should accidentally fall,"
          "There'll be five green bottles hanging on the wall."
          ""
          "Five green bottles hanging on the wall,"
          "Five green bottles hanging on the wall,"
          "And if one green bottle should accidentally fall,"
          "There'll be four green bottles hanging on the wall."
          ""
          "Four green bottles hanging on the wall,"
          "Four green bottles hanging on the wall,"
          "And if one green bottle should accidentally fall,"
          "There'll be three green bottles hanging on the wall."
          ""
          "Three green bottles hanging on the wall,"
          "Three green bottles hanging on the wall,"
          "And if one green bottle should accidentally fall,"
          "There'll be two green bottles hanging on the wall."
          ""
          "Two green bottles hanging on the wall,"
          "Two green bottles hanging on the wall,"
          "And if one green bottle should accidentally fall,"
          "There'll be one green bottle hanging on the wall."
          ""
          "One green bottle hanging on the wall,"
          "One green bottle hanging on the wall,"
          "And if one green bottle should accidentally fall,"
          "There'll be no green bottles hanging on the wall."
        ]
        expect(bottleSong.recite 10, 10).toEqual expected
