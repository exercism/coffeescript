DndCharacter = require './dnd-character'

describe 'D&D Character', ->
  character = new DndCharacter()

  describe 'ability modifier ->', ->
    it 'ability modifier for score 3 is -4', ->
      expect(character.modifier 3).toEqual -4

    xit 'ability modifier for score 4 is -3', ->
      expect(character.modifier 4).toEqual -3

    xit 'ability modifier for score 5 is -3', ->
      expect(character.modifier 5).toEqual -3

    xit 'ability modifier for score 6 is -2', ->
      expect(character.modifier 6).toEqual -2

    xit 'ability modifier for score 7 is -2', ->
      expect(character.modifier 7).toEqual -2

    xit 'ability modifier for score 8 is -1', ->
      expect(character.modifier 8).toEqual -1

    xit 'ability modifier for score 9 is -1', ->
      expect(character.modifier 9).toEqual -1

    xit 'ability modifier for score 10 is 0', ->
      expect(character.modifier 10).toEqual 0

    xit 'ability modifier for score 11 is 0', ->
      expect(character.modifier 11).toEqual 0

    xit 'ability modifier for score 12 is +1', ->
      expect(character.modifier 12).toEqual 1

    xit 'ability modifier for score 13 is +1', ->
      expect(character.modifier 13).toEqual 1

    xit 'ability modifier for score 14 is +2', ->
      expect(character.modifier 14).toEqual 2

    xit 'ability modifier for score 15 is +2', ->
      expect(character.modifier 15).toEqual 2

    xit 'ability modifier for score 16 is +3', ->
      expect(character.modifier 16).toEqual 3

    xit 'ability modifier for score 17 is +3', ->
      expect(character.modifier 17).toEqual 3

    xit 'ability modifier for score 18 is +4', ->
      expect(character.modifier 18).toEqual 4

  describe 'ability ->', ->
    xit 'random ability is within range', ->
      score = character.ability()
      expect(score in [3..18]).toBeTrue

    xit 'random character is valid', ->
      abilities =  [
        character.strength
        character.dexterity
        character.constitution
        character.intelligence
        character.wisdom
        character.charisma
      ]
      for ability in abilities
          expect(ability in [3..18]).toBeTrue
      expect(character.hitpoints).toEqual (10 + character.modifier(character.constitution))

    xit 'each ability is only calculated once', ->
        abilities =  [
            character.strength
            character.dexterity
            character.constitution
            character.intelligence
            character.wisdom
            character.charisma
        ]
        for ability in abilities
            expect(ability).toEqual ability