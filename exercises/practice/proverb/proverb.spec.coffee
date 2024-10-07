Proverb = require './proverb'

describe 'Proverb', ->
  it 'zero pieces with a valid position', ->
    items = []
    expected = ''
    expect(Proverb.recite items).toEqual expected

  xit 'one piece', ->
    items = ['nail']
    expected = 'And all for the want of a nail.'
    expect(Proverb.recite items).toEqual expected

  xit 'two pieces', ->
    items = ['nail', 'shoe']
    expected = """
      For want of a nail the shoe was lost.
      And all for the want of a nail.
    """
    expect(Proverb.recite items).toEqual expected

  xit 'three pieces', ->
    items = ['nail', 'shoe', 'horse']
    expected = """
      For want of a nail the shoe was lost.
      For want of a shoe the horse was lost.
      And all for the want of a nail.
    """
    expect(Proverb.recite items).toEqual expected

  xit 'full proverb', ->
    items = [
      'nail'
      'shoe'
      'horse'
      'rider'
      'message'
      'battle'
      'kingdom'
    ]
    expected = """
      For want of a nail the shoe was lost.
      For want of a shoe the horse was lost.
      For want of a horse the rider was lost.
      For want of a rider the message was lost.
      For want of a message the battle was lost.
      For want of a battle the kingdom was lost.
      And all for the want of a nail.
    """
    expect(Proverb.recite items).toEqual expected

  xit 'four pieces modernized', ->
    items = ['pin', 'gun', 'soldier', 'battle']
    expected = """
      For want of a pin the gun was lost.
      For want of a gun the soldier was lost.
      For want of a soldier the battle was lost.
      And all for the want of a pin.
    """
    expect(Proverb.recite items).toEqual expected
