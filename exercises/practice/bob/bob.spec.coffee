# These tests are auto-generated with test data from:
# https://github.com/exercism/problem-specifications/blob/main/exercises/bob/canonical-data.json
# File last updated on 2026-10-30T16:44:09+00:00

Bob = require './bob'

describe "Bob", ->
  it "asking a question", ->
    bob = new Bob
    expect(bob.hey "Does this cryogenic chamber make me look fat?").toEqual "Sure."

  xit "shouting", ->
    bob = new Bob
    expect(bob.hey "WATCH OUT!").toEqual "Whoa, chill out!"

  xit "forceful question", ->
    bob = new Bob
    expect(bob.hey "WHAT'S GOING ON?").toEqual "Calm down, I know what I'm doing!"

  xit "silence", ->
    bob = new Bob
    expect(bob.hey "").toEqual "Fine. Be that way!"

  xit "stating something", ->
    bob = new Bob
    expect(bob.hey "Tom-ay-to, tom-aaaah-to.").toEqual "Whatever."

  xit "asking a numeric question", ->
    bob = new Bob
    expect(bob.hey "You are, what, like 15?").toEqual "Sure."

  xit "asking gibberish", ->
    bob = new Bob
    expect(bob.hey "fffbbcbeab?").toEqual "Sure."

  xit "question with no letters", ->
    bob = new Bob
    expect(bob.hey "4?").toEqual "Sure."

  xit "non-letters with question", ->
    bob = new Bob
    expect(bob.hey ":) ?").toEqual "Sure."

  xit "prattling on", ->
    bob = new Bob
    expect(bob.hey "Wait! Hang on. Are you going to be OK?").toEqual "Sure."

  xit "ending with whitespace", ->
    bob = new Bob
    expect(bob.hey "Okay if like my  spacebar  quite a bit?   ").toEqual "Sure."

  xit "multiple line question", ->
    bob = new Bob
    expect(bob.hey "\nDoes this cryogenic chamber make\n me look fat?").toEqual "Sure."

  xit "shouting gibberish", ->
    bob = new Bob
    expect(bob.hey "FCECDFCAAB").toEqual "Whoa, chill out!"

  xit "shouting a statement containing a question mark", ->
    bob = new Bob
    expect(bob.hey "DO LIONS EAT PEOPLE? AHHHHH.").toEqual "Whoa, chill out!"

  xit "shouting numbers", ->
    bob = new Bob
    expect(bob.hey "1, 2, 3 GO!").toEqual "Whoa, chill out!"

  xit "shouting with special characters", ->
    bob = new Bob
    expect(bob.hey "ZOMG THE %^*@#$(*^ ZOMBIES ARE COMING!!11!!1!").toEqual "Whoa, chill out!"

  xit "shouting with no exclamation mark", ->
    bob = new Bob
    expect(bob.hey "I HATE THE DENTIST").toEqual "Whoa, chill out!"

  xit "prolonged silence", ->
    bob = new Bob
    expect(bob.hey "          ").toEqual "Fine. Be that way!"

  xit "alternate silence", ->
    bob = new Bob
    expect(bob.hey "\t\t\t\t\t\t\t\t\t\t").toEqual "Fine. Be that way!"

  xit "other whitespace", ->
    bob = new Bob
    expect(bob.hey "\n\r \t").toEqual "Fine. Be that way!"

  xit "talking forcefully", ->
    bob = new Bob
    expect(bob.hey "Hi there!").toEqual "Whatever."

  xit "using acronyms in regular speech", ->
    bob = new Bob
    expect(bob.hey "It's OK if you don't want to go work for NASA.").toEqual "Whatever."

  xit "no letters", ->
    bob = new Bob
    expect(bob.hey "1, 2, 3").toEqual "Whatever."

  xit "statement containing question mark", ->
    bob = new Bob
    expect(bob.hey "Ending with ? means a question.").toEqual "Whatever."

  xit "starting with whitespace", ->
    bob = new Bob
    expect(bob.hey "         hmmmmmmm...").toEqual "Whatever."

  xit "non-question ending with whitespace", ->
    bob = new Bob
    expect(bob.hey "This is a statement ending with whitespace      ").toEqual "Whatever."
