Satellite = require './satellite'

describe 'Satellite', ->
  it 'Empty tree', ->
    preorder = []
    inorder = []
    expect(Satellite.treeFromTraversals(preorder, inorder)).toEqual {}

  xit 'Tree with one item', ->
    preorder = ['a']
    inorder = ['a']
    expected =
      value: 'a'
      left: {}
      right: {}
    expect(Satellite.treeFromTraversals(preorder, inorder)).toEqual expected

  xit 'Tree with many items', ->
    preorder = ['a', 'i', 'x', 'f', 'r']
    inorder = ['i', 'a', 'f', 'x', 'r']
    expected =
      value: 'a'
      left:
        value: 'i'
        left: {}
        right: {}
      right:
        value: 'x'
        left:
          value: 'f'
          left: {}
          right: {}
        right:
          value: 'r'
          left: {}
          right: {}
    expect(Satellite.treeFromTraversals(preorder, inorder)).toEqual expected

  xit 'Reject traversals of different length', ->
    preorder = ['a', 'b']
    inorder = ['b', 'a', 'r']
    expect(-> Satellite.treeFromTraversals(preorder, inorder)).toThrow new Error 'traversals must have the same length'

  xit 'Reject inconsistent traversals of same length', ->
    preorder = ['x', 'y', 'z']
    inorder = ['a', 'b', 'c']
    expect(-> Satellite.treeFromTraversals(preorder, inorder)).toThrow new Error 'traversals must have the same elements'

  xit 'Reject traversals with repeated items', ->
    preorder = ['a', 'b', 'a']
    inorder = ['b', 'a', 'a']
    expect(-> Satellite.treeFromTraversals(preorder, inorder)).toThrow new Error 'traversals must contain unique items'

  xit 'A degenerate binary tree', ->
    preorder = ['a', 'b', 'c', 'd']
    inorder = ['d', 'c', 'b', 'a']
    expected =
      value: 'a'
      left:
        value: 'b'
        left:
          value: 'c'
          left:
            value: 'd'
            left: {}
            right: {}
          right: {}
        right: {}
      right: {}
    expect(Satellite.treeFromTraversals(preorder, inorder)).toEqual expected

  xit 'Another degenerate binary tree', ->
    preorder = ['a', 'b', 'c', 'd']
    inorder = ['a', 'b', 'c', 'd']
    expected =
      value: 'a'
      left: {}
      right:
        value: 'b'
        left: {}
        right:
          value: 'c'
          left: {}
          right:
            value: 'd'
            left: {}
            right: {}
    expect(Satellite.treeFromTraversals(preorder, inorder)).toEqual expected

  xit 'Tree with many more items', ->
    preorder = ['a', 'b', 'd', 'g', 'h', 'c', 'e', 'f', 'i']
    inorder = ['g', 'd', 'h', 'b', 'a', 'e', 'c', 'i', 'f']
    expected =
      value: 'a'
      left:
        value: 'b'
        left:
          value: 'd'
          left:
            value: 'g'
            left: {}
            right: {}
          right:
            value: 'h'
            left: {}
            right: {}
        right: {}
      right:
        value: 'c'
        left:
          value: 'e'
          left: {}
          right: {}
        right:
          value: 'f'
          left:
            value: 'i'
            left: {}
            right: {}
          right: {}
    expect(Satellite.treeFromTraversals(preorder, inorder)).toEqual expected
