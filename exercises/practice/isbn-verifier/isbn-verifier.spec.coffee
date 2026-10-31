# These tests are auto-generated with test data from:
# https://github.com/exercism/problem-specifications/blob/main/exercises/isbn-verifier/canonical-data.json
# File last updated on 2026-10-30T23:09:28+00:00

ISBNVerifier = require './isbn-verifier'

describe "ISBN Verifier", ->
  it "valid isbn", ->
    expect(ISBNVerifier.isValid "3-598-21508-8").toEqual true

  xit "invalid isbn check digit", ->
    expect(ISBNVerifier.isValid "3-598-21508-9").toEqual false

  xit "valid isbn with a check digit of 10", ->
    expect(ISBNVerifier.isValid "3-598-21507-X").toEqual true

  xit "check digit is a character other than X", ->
    expect(ISBNVerifier.isValid "3-598-21507-A").toEqual false

  xit "invalid check digit in isbn is not treated as zero", ->
    expect(ISBNVerifier.isValid "4-598-21507-B").toEqual false

  xit "invalid character in isbn is not treated as zero", ->
    expect(ISBNVerifier.isValid "3-598-P1581-X").toEqual false

  xit "X is only valid as a check digit", ->
    expect(ISBNVerifier.isValid "3-598-2X507-9").toEqual false

  xit "only one check digit is allowed", ->
    expect(ISBNVerifier.isValid "3-598-21508-96").toEqual false

  xit "X is not substituted by the value 10", ->
    expect(ISBNVerifier.isValid "3-598-2X507-5").toEqual false

  xit "valid isbn without separating dashes", ->
    expect(ISBNVerifier.isValid "3598215088").toEqual true

  xit "isbn without separating dashes and X as check digit", ->
    expect(ISBNVerifier.isValid "359821507X").toEqual true

  xit "isbn without check digit and dashes", ->
    expect(ISBNVerifier.isValid "359821507").toEqual false

  xit "too long isbn and no dashes", ->
    expect(ISBNVerifier.isValid "3598215078X").toEqual false

  xit "too short isbn", ->
    expect(ISBNVerifier.isValid "00").toEqual false

  xit "isbn without check digit", ->
    expect(ISBNVerifier.isValid "3-598-21507").toEqual false

  xit "check digit of X should not be used for 0", ->
    expect(ISBNVerifier.isValid "3-598-21515-X").toEqual false

  xit "empty isbn", ->
    expect(ISBNVerifier.isValid "").toEqual false

  xit "input is 9 characters", ->
    expect(ISBNVerifier.isValid "134456729").toEqual false

  xit "invalid characters are not ignored after checking length", ->
    expect(ISBNVerifier.isValid "3132P34035").toEqual false

  xit "invalid characters are not ignored before checking length", ->
    expect(ISBNVerifier.isValid "3598P215088").toEqual false

  xit "input is too long but contains a valid isbn", ->
    expect(ISBNVerifier.isValid "98245726788").toEqual false
