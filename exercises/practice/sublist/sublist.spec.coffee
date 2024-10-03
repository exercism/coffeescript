{ Sublist, Classification } = require './sublist'

describe 'Sublist', ->
    it 'empty lists', ->
        listOne = []
        listTwo = []
        result = Sublist.classify listOne, listTwo
        expect(result).toEqual Classification.equal

    xit 'empty list within non empty list', ->
        listOne = []
        listTwo = [1, 2, 3]
        result = Sublist.classify listOne, listTwo
        expect(result).toEqual Classification.sublist

    xit 'non empty list contains empty list', ->
        listOne = [1, 2, 3]
        listTwo = []
        result = Sublist.classify listOne, listTwo
        expect(result).toEqual Classification.superlist

    xit 'list equals itself', ->
        listOne = [1, 2, 3]
        listTwo = [1, 2, 3]
        result = Sublist.classify listOne, listTwo
        expect(result).toEqual Classification.equal

    xit 'different lists', ->
        listOne = [1, 2, 3]
        listTwo = [2, 3, 4]
        result = Sublist.classify listOne, listTwo
        expect(result).toEqual Classification.unequal

    xit 'false start', ->
        listOne = [1, 2, 5]
        listTwo = [0, 1, 2, 3, 1, 2, 5, 6]
        result = Sublist.classify listOne, listTwo
        expect(result).toEqual Classification.sublist

    xit 'consecutive', ->
        listOne = [1, 1, 2]
        listTwo = [0, 1, 1, 1, 2, 1, 2]
        result = Sublist.classify listOne, listTwo
        expect(result).toEqual Classification.sublist

    xit 'sublist at start', ->
        listOne = [0, 1, 2]
        listTwo = [0, 1, 2, 3, 4, 5]
        result = Sublist.classify listOne, listTwo
        expect(result).toEqual Classification.sublist

    xit 'sublist in middle', ->
        listOne = [2, 3, 4]
        listTwo = [0, 1, 2, 3, 4, 5]
        result = Sublist.classify listOne, listTwo
        expect(result).toEqual Classification.sublist

    xit 'sublist at end', ->
        listOne = [3, 4, 5]
        listTwo = [0, 1, 2, 3, 4, 5]
        result = Sublist.classify listOne, listTwo
        expect(result).toEqual Classification.sublist

    xit 'at start of superlist', ->
        listOne = [0, 1, 2, 3, 4, 5]
        listTwo = [0, 1, 2]
        result = Sublist.classify listOne, listTwo
        expect(result).toEqual Classification.superlist

    xit 'in middle of superlist', ->
        listOne = [0, 1, 2, 3, 4, 5]
        listTwo = [2, 3]
        result = Sublist.classify listOne, listTwo
        expect(result).toEqual Classification.superlist

    xit 'at end of superlist', ->
        listOne = [0, 1, 2, 3, 4, 5]
        listTwo = [3, 4, 5]
        result = Sublist.classify listOne, listTwo
        expect(result).toEqual Classification.superlist

    xit 'first list missing element from second list', ->
        listOne = [1, 3]
        listTwo = [1, 2, 3]
        result = Sublist.classify listOne, listTwo
        expect(result).toEqual Classification.unequal

    xit 'second list missing element from first list', ->
        listOne = [1, 2, 3]
        listTwo = [1, 3]
        result = Sublist.classify listOne, listTwo
        expect(result).toEqual Classification.unequal

    xit 'first list missing additional digits from second list', ->
        listOne = [1, 2]
        listTwo = [1, 22]
        result = Sublist.classify listOne, listTwo
        expect(result).toEqual Classification.unequal

    xit 'order matters to a list', ->
        listOne = [1, 2, 3]
        listTwo = [3, 2, 1]
        result = Sublist.classify listOne, listTwo
        expect(result).toEqual Classification.unequal

    xit 'same digits but different numbers', ->
        listOne = [1, 0, 1]
        listTwo = [10, 1]
        result = Sublist.classify listOne, listTwo
        expect(result).toEqual Classification.unequal
