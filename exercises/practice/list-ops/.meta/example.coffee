class ListOps
  @append: (list1, list2) ->
    @concat([list1, list2])

  @concat: (lists) ->
    results = []
    for list in lists
      for elt in list
        results.push elt
    results

  @filter: (list, f) ->
    (elt for elt in list when f(elt))

  @mylength: (list) ->
    fn = (acc, _) -> acc + 1
    @foldl(list, fn, 0)

  @map: (list, fn) ->
    (fn(elt) for elt in list)
  
  @foldl: (list, fn, initial) ->
    results = initial
    for elt in list
      results = fn(results, elt)
    results

  @foldr: (list, fn, initial) ->
    if list.length == 0
      initial
    else
      last = list.pop()
      @foldr(list, fn, fn(initial, last))

  @reverse: (list) ->
    if list.length == 0
      list
    else
      start = list.length - 1
      (list[i] for i in [start..0])

module.exports = ListOps
