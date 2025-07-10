class RelativeDistance
  @degreesOfSeparation: (familyTree, personA, personB) ->
    neighbors = {}
    for parent, children of familyTree
      neighbors[parent] ?= []
      for child in children
        neighbors[child] ?= []
        neighbors[parent].push child unless child in neighbors[parent]
        neighbors[child].push parent unless parent in neighbors[child]

      if children.length > 1
        for child1 in children
          for child2 in children when child1 isnt child2
            neighbors[child1].push child2 unless child2 in neighbors[child1]

    return -1 unless neighbors[personA] and neighbors[personB]

    queue = [[personA, 0]]
    visited = {}
    visited[personA] = 1

    while queue.length
      [current, degree] = queue.shift()

      return degree if current is personB

      for neighbor in neighbors[current] when not visited[neighbor]
        queue.push [neighbor, degree + 1]
        visited[neighbor] = 1

    -1

module.exports = RelativeDistance
