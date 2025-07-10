Classification =
  equal: 'equal'
  unequal: 'unequal'
  sublist: 'sublist'
  superlist: 'superlist'

class Sublist
  @classify: (listOne, listTwo) ->
    if JSON.stringify(listOne) == JSON.stringify(listTwo)
      Classification.equal
    else if @is_superlist(listOne, listTwo)
      Classification.superlist
    else if @is_superlist(listTwo, listOne)
      Classification.sublist
    else
      Classification.unequal

  @is_superlist: (listOne, listTwo) ->
    for i in [0..listOne.length - listTwo.length]
      if listOne.slice(i, i + listTwo.length).join() == listTwo.join()
        return true
    false

module.exports = { Sublist, Classification }
