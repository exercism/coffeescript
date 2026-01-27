class Satellite
  @treeFromTraversals: (preorder, inorder) ->
    if preorder.length != inorder.length
        throw new Error 'traversals must have the same length'
    
    uniquePreorder = new Set preorder
    uniqueInorder = new Set inorder

    if uniquePreorder.size != preorder.length or uniqueInorder.size != inorder.length
        throw new Error 'traversals must contain unique items'
    
    preorderSorted = preorder.slice().sort().join(',')
    inorderSorted = inorder.slice().sort().join(',')

    if preorderSorted != inorderSorted
        throw new Error 'traversals must have the same elements'
    
    if preorder.length == 0
        return {}

    head = preorder[0]
    preorderRest = preorder.slice 1
    inorderIndex = inorder.indexOf head

    leftInorder = inorder.slice 0, inorderIndex
    rightInorder = inorder.slice inorderIndex + 1

    leftPreorder = preorderRest.filter node -> leftInorder.includes node
    rightPreorder = preorderRest.filter node -> rightInorder.includes node

    {
        value: head
        left: @treeFromTraversals leftPreorder, leftInorder
        right: @treeFromTraversals rightPreorder, rightInorder
    }

module.exports = Satellite
