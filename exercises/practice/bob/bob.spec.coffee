Bob = require './bob'

describe 'Bob', ->
  bob = new Bob()
  it 'asking a question', ->
    result = bob.hey 'Does this cryogenic chamber make me look fat?'
    expect(result).toEqual 'Sure.'

  xit 'shouting', ->
    result = bob.hey 'WATCH OUT!'
    expect(result).toEqual 'Whoa, chill out!'

  xit 'forceful question', ->
    result = bob.hey "WHAT'S GOING ON?"
    expect(result).toEqual "Calm down, I know what I'm doing!"

  xit 'silence', ->
    result = bob.hey ''
    expect(result).toEqual 'Fine. Be that way!'

  xit 'stating something', ->
    result = bob.hey 'Tom-ay-to, tom-aaaah-to.'
    expect(result).toEqual 'Whatever.'

  xit 'asking a numeric question', ->
    result = bob.hey 'You are, what, like 15?'
    expect(result).toEqual 'Sure.'

  xit 'asking gibberish', ->
    result = bob.hey 'fffbbcbeab?'
    expect(result).toEqual 'Sure.'

  xit 'question with no letters', ->
    result = bob.hey '4?'
    expect(result).toEqual 'Sure.'

  xit 'non-letters with question', ->
    result = bob.hey ':) ?'
    expect(result).toEqual 'Sure.'

  xit 'prattling on', ->
    result = bob.hey 'Wait! Hang on. Are you going to be OK?'
    expect(result).toEqual 'Sure.'

  xit 'ending with whitespace', ->
    result = bob.hey 'Okay if like my  spacebar  quite a bit?   '
    expect(result).toEqual 'Sure.'

  xit 'multiple line question', ->
    result = bob.hey "\nDoes this cryogenic chamber make\n me look fat?"
    expect(result).toEqual 'Sure.'

  xit 'shouting gibberish', ->
    result = bob.hey 'FCECDFCAAB'
    expect(result).toEqual 'Whoa, chill out!'

  xit 'shouting a statement containing a question mark', ->
    result = bob.hey 'DO LIONS EAT PEOPLE? AHHHHH.'
    expect(result).toEqual 'Whoa, chill out!'

  xit 'shouting numbers', ->
    result = bob.hey '1, 2, 3 GO!'
    expect(result).toEqual 'Whoa, chill out!'

  xit 'shouting with special characters', ->
    result = bob.hey 'ZOMG THE %^*@#$(*^ ZOMBIES ARE COMING!!11!!1!'
    expect(result).toEqual 'Whoa, chill out!'

  xit 'shouting with no exclamation mark', ->
    result = bob.hey 'I HATE THE DENTIST'
    expect(result).toEqual 'Whoa, chill out!'

  xit 'prolonged silence', ->
    result = bob.hey '          '
    expect(result).toEqual 'Fine. Be that way!'

  xit 'alternate silence', ->
    result = bob.hey "\t\t\t\t\t\t\t\t\t\t"
    expect(result).toEqual 'Fine. Be that way!'

  xit 'other whitespace', ->
    result = bob.hey "\n\r \t"
    expect(result).toEqual 'Fine. Be that way!'

  xit 'talking forcefully', ->
    result = bob.hey 'Hi there!'
    expect(result).toEqual 'Whatever.'

  xit 'using acronyms in regular speech', ->
    result = bob.hey "It's OK if you don't want to go work for NASA."
    expect(result).toEqual 'Whatever.'

  xit 'no letters', ->
    result = bob.hey '1, 2, 3'
    expect(result).toEqual 'Whatever.'

  xit 'statement containing question mark', ->
    result = bob.hey 'Ending with ? means a question.'
    expect(result).toEqual 'Whatever.'

  xit 'starting with whitespace', ->
    result = bob.hey '         hmmmmmmm...'
    expect(result).toEqual 'Whatever.'

  xit 'non-question ending with whitespace', ->
    result = bob.hey 'This is a statement ending with whitespace      '
    expect(result).toEqual 'Whatever.'
