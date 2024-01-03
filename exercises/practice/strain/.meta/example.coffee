class Strain
  keep: (lst, predicate) -> 
    x for x in lst when predicate(x)

  discard: (lst, predicate) ->
    x for x in lst when !predicate(x)

module.exports = Strain
