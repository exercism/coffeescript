# These tests are auto-generated with test data from:
# https://github.com/exercism/problem-specifications/blob/main/exercises/micro-blog/canonical-data.json
# File last updated on 2026-11-09T05:38:03+00:00

MicroBlog = require './micro-blog'

describe "Micro Blog", ->
  it "English language short", ->
    expect(MicroBlog.truncate "Hi").toEqual "Hi"

  xit "English language long", ->
    expect(MicroBlog.truncate "Hello there").toEqual "Hello"

  xit "German language short (broth)", ->
    expect(MicroBlog.truncate "brühe").toEqual "brühe"

  xit "German language long (bear carpet → beards)", ->
    expect(MicroBlog.truncate "Bärteppich").toEqual "Bärte"

  xit "Bulgarian language short (good)", ->
    expect(MicroBlog.truncate "Добър").toEqual "Добър"

  xit "Greek language short (health)", ->
    expect(MicroBlog.truncate "υγειά").toEqual "υγειά"

  xit "Maths short", ->
    expect(MicroBlog.truncate "a=πr²").toEqual "a=πr²"

  xit "Maths long", ->
    expect(MicroBlog.truncate "∅⊊ℕ⊊ℤ⊊ℚ⊊ℝ⊊ℂ").toEqual "∅⊊ℕ⊊ℤ"

  xit "English and emoji short", ->
    expect(MicroBlog.truncate "Fly 🛫").toEqual "Fly 🛫"

  xit "Emoji short", ->
    expect(MicroBlog.truncate "💇").toEqual "💇"

  xit "Emoji long", ->
    expect(MicroBlog.truncate "❄🌡🤧🤒🏥🕰😀").toEqual "❄🌡🤧🤒🏥"

  xit "Royal Flush?", ->
    expect(MicroBlog.truncate "🃎🂸🃅🃋🃍🃁🃊").toEqual "🃎🂸🃅🃋🃍"
