Microblog = require './micro-blog'

describe 'Micro Blog', ->
  it 'English language short', ->
    result = Microblog.truncate 'Hi'
    expect(result).toEqual 'Hi'

  xit 'English language long', ->
    result = Microblog.truncate 'Hello there'
    expect(result).toEqual 'Hello'

  xit 'German language short (broth)', ->
    result = Microblog.truncate 'brühe'
    expect(result).toEqual 'brühe'

  xit 'German language long (bear carpet → beards)', ->
    result = Microblog.truncate 'Bärteppich'
    expect(result).toEqual 'Bärte'

  xit 'Bulgarian language short (good)', ->
    result = Microblog.truncate 'Добър'
    expect(result).toEqual 'Добър'

  xit 'Greek language short (health)', ->
    result = Microblog.truncate 'υγειά'
    expect(result).toEqual 'υγειά'

  xit 'Maths short', ->
    result = Microblog.truncate 'a=πr²'
    expect(result).toEqual 'a=πr²'

  xit 'Maths long', ->
    result = Microblog.truncate '∅⊊ℕ⊊ℤ⊊ℚ⊊ℝ⊊ℂ'
    expect(result).toEqual '∅⊊ℕ⊊ℤ'

  xit 'English and emoji short', ->
    result = Microblog.truncate 'Fly 🛫'
    expect(result).toEqual 'Fly 🛫'

  xit 'Emoji short', ->
    result = Microblog.truncate '💇'
    expect(result).toEqual '💇'
    
  xit 'Emoji long', ->
    result = Microblog.truncate '❄🌡🤧🤒🏥🕰😀'
    expect(result).toEqual '❄🌡🤧🤒🏥'

  xit 'Royal Flush?', ->
    result = Microblog.truncate '🃎🂸🃅🃋🃍🃁🃊'
    expect(result).toEqual '🃎🂸🃅🃋🃍'
