CustomSet = require './custom-set'

describe 'Custom Set', ->
  describe 'Empty', ->
    it 'sets with no elements are empty', ->
      set = new CustomSet []
      expect(set.empty()).toEqual true

    xit 'sets with elements are not empty', ->
      set = new CustomSet [1]
      expect(set.empty()).toEqual false

  describe 'Contains', ->
    xit 'nothing is contained in an empty set', ->
      set = new CustomSet []
      expect(set.contains 1).toEqual false

    xit 'when the element is in the set', ->
      set = new CustomSet [1, 2, 3]
      expect(set.contains 1).toEqual true

    xit 'when the element is not in the set', ->
      set = new CustomSet [1, 2, 3]
      expect(set.contains 4).toEqual false

  describe 'Subset', ->
    xit 'empty set is a subset of another empty set', ->
      set1 = new CustomSet []
      set2 = new CustomSet []
      expect(set1.subset set2).toEqual true

    xit 'empty set is a subset of non-empty set', ->
      set1 = new CustomSet []
      set2 = new CustomSet [1]
      expect(set1.subset set2).toEqual true

    xit 'non-empty set is not a subset of empty set', ->
      set1 = new CustomSet [1]
      set2 = new CustomSet []
      expect(set1.subset set2).toEqual false

    xit 'set is a subset of set with exact same elements', ->
      set1 = new CustomSet [1, 2, 3]
      set2 = new CustomSet [1, 2, 3]
      expect(set1.subset set2).toEqual true

    xit 'set is a subset of larger set with same elements', ->
      set1 = new CustomSet [1, 2, 3]
      set2 = new CustomSet [4, 1, 2, 3]
      expect(set1.subset set2).toEqual true

    xit 'set is not a subset of set that does not contain its elements', ->
      set1 = new CustomSet [1, 2, 3]
      set2 = new CustomSet [4, 1, 3]
      expect(set1.subset set2).toEqual false

  describe 'Disjoint', ->
    xit 'the empty set is disjoint with itself', ->
      set1 = new CustomSet []
      set2 = new CustomSet []
      expect(set1.disjoint set2).toEqual true

    xit 'empty set is disjoint with non-empty set', ->
      set1 = new CustomSet []
      set2 = new CustomSet [1]
      expect(set1.disjoint set2).toEqual true

    xit 'non-empty set is disjoint with empty set', ->
      set1 = new CustomSet [1]
      set2 = new CustomSet []
      expect(set1.disjoint set2).toEqual true

    xit 'sets are not disjoint if they share an element', ->
      set1 = new CustomSet [1, 2]
      set2 = new CustomSet [2, 3]
      expect(set1.disjoint set2).toEqual false

    xit 'sets are disjoint if they share no elements', ->
      set1 = new CustomSet [1, 2]
      set2 = new CustomSet [3, 4]
      expect(set1.disjoint set2).toEqual true

  describe 'Equal', ->
    xit 'empty sets are equal', ->
      set1 = new CustomSet []
      set2 = new CustomSet []
      expect(set1.equal set2).toEqual true

    xit 'empty set is not equal to non-empty set', ->
      set1 = new CustomSet []
      set2 = new CustomSet [1, 2, 3]
      expect(set1.equal set2).toEqual false

    xit 'non-empty set is not equal to empty set', ->
      set1 = new CustomSet [1, 2, 3]
      set2 = new CustomSet []
      expect(set1.equal set2).toEqual false

    xit 'sets with the same elements are equal', ->
      set1 = new CustomSet [1, 2]
      set2 = new CustomSet [2, 1]
      expect(set1.equal set2).toEqual true

    xit 'sets with different elements are not equal', ->
      set1 = new CustomSet [1, 2, 3]
      set2 = new CustomSet [1, 2, 4]
      expect(set1.equal set2).toEqual false

    xit 'set is not equal to larger set with same elements', ->
      set1 = new CustomSet [1, 2, 3]
      set2 = new CustomSet [1, 2, 3, 4]
      expect(set1.equal set2).toEqual false

    xit 'set is equal to a set constructed from an array with duplicates', ->
      set1 = new CustomSet [1]
      set2 = new CustomSet [1, 1]
      expect(set1.equal set2).toEqual true

  describe 'Add', ->
    xit 'add to empty set', ->
      set = new CustomSet []
      set.add 3
      expect(set.values).toEqual [3]

    xit 'add to non-empty set', ->
      set = new CustomSet [1, 2, 4]
      set.add 3
      expect(set.values).toEqual [1, 2, 3, 4]

    xit 'adding an existing element does not change the set', ->
      set = new CustomSet [1, 2, 3]
      set.add 3
      expect(set.values).toEqual [1, 2, 3]

  describe 'Intersection', ->
    xit 'intersection of two empty sets is an empty set', ->
      set1 = new CustomSet []
      set2 = new CustomSet []
      expect(set1.intersection set2).toEqual new CustomSet []

    xit 'intersection of an empty set and non-empty set is an empty set', ->
      set1 = new CustomSet []
      set2 = new CustomSet [3, 2, 5]
      expect(set1.intersection set2).toEqual new CustomSet []

    xit 'intersection of a non-empty set and an empty set is an empty set', ->
      set1 = new CustomSet [1, 2, 3, 4]
      set2 = new CustomSet []
      expect(set1.intersection set2).toEqual new CustomSet []

    xit 'intersection of two sets with no shared elements is an empty set', ->
      set1 = new CustomSet [1, 2, 3]
      set2 = new CustomSet [4, 5, 6]
      expect(set1.intersection set2).toEqual new CustomSet []

    xit 'intersection of two sets with shared elements is a set of the shared elements', ->
      set1 = new CustomSet [1, 2, 3, 4]
      set2 = new CustomSet [3, 2, 5]
      expect(set1.intersection set2).toEqual new CustomSet [2, 3]

  describe 'Difference', ->
    xit 'difference of two empty sets is an empty set', ->
      set1 = new CustomSet []
      set2 = new CustomSet []
      expect(set1.difference set2).toEqual new CustomSet []

    xit 'difference of empty set and non-empty set is an empty set', ->
      set1 = new CustomSet []
      set2 = new CustomSet [3, 2, 5]
      expect(set1.difference set2).toEqual new CustomSet []

    xit 'difference of a non-empty set and an empty set is the non-empty set', ->
      set1 = new CustomSet [1, 2, 3, 4]
      set2 = new CustomSet []
      expect(set1.difference set2).toEqual new CustomSet [1, 2, 3, 4]

    xit 'difference of two non-empty sets is a set of elements that are only in the first set', ->
      set1 = new CustomSet [3, 2, 1]
      set2 = new CustomSet [2, 4]
      expect(set1.difference set2).toEqual new CustomSet [1, 3]

    xit 'difference removes all duplicates in the first set', ->
      set1 = new CustomSet [1, 1]
      set2 = new CustomSet [1]
      expect(set1.difference set2).toEqual new CustomSet []

  describe 'Union', ->
    xit 'union of empty sets is an empty set', ->
      set1 = new CustomSet []
      set2 = new CustomSet []
      expect(set1.union set2).toEqual new CustomSet []

    xit 'union of an empty set and non-empty set is the non-empty set', ->
      set1 = new CustomSet []
      set2 = new CustomSet [2]
      expect(set1.union set2).toEqual new CustomSet [2]

    xit 'union of a non-empty set and empty set is the non-empty set', ->
      set1 = new CustomSet [1, 3]
      set2 = new CustomSet []
      expect(set1.union set2).toEqual new CustomSet [1, 3]

    xit 'union of non-empty sets contains all unique elements', ->
      set1 = new CustomSet [1, 3]
      set2 = new CustomSet [2, 3]
      expect(set1.union set2).toEqual new CustomSet [3, 2, 1]
