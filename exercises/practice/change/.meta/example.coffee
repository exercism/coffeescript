class Change
  @findFewestCoins: (coins, targetBalance) ->
    throw new Error "target can't be negative" if targetBalance < 0

    return [] if targetBalance is 0

    availableCoins = coins.toSorted()
    queue = [0]
    visited = {0: []}

    while queue.length > 0
      initialBalance = queue.shift()

      for coin in availableCoins
        updatedBalance = initialBalance + coin
        continue if updatedBalance > targetBalance or visited[updatedBalance]

        usedCoins = visited[initialBalance].concat coin
        if updatedBalance is targetBalance
          return usedCoins.toSorted (a, b) -> a - b

        visited[updatedBalance] = usedCoins
        queue.push updatedBalance

    throw new Error "can't make target with given coins"

module.exports = Change
