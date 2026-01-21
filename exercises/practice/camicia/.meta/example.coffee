class Camicia
  @simulateGame: (playerA, playerB) ->
    getCardValue = (card) ->
      switch card
        when 'J' then 1
        when 'Q' then 2
        when 'K' then 3
        when 'A' then 4
        else 0

    handA = playerA.map getCardValue
    handB = playerB.map getCardValue

    turn = 'A'
    pile = []
    seen = new Set()
    totalTricks = 0
    cardsPlayed = 0
    currentDebt = 0

    while true
      if pile.length == 0
        round = "#{handA.join(',')}|#{handB.join(',')}|#{turn}"
        if seen.has round
          return { status: 'loop', tricks: totalTricks, cards: cardsPlayed }
        seen.add round

      activeHand = if turn == 'A' then handA else handB
      otherHand = if turn == 'A' then handB else handA

      if activeHand.length == 0
        extraTrick = if pile.length == 0 then 0 else 1
        return { status: 'finished', tricks: totalTricks + extraTrick, cards: cardsPlayed }

      cardVal = activeHand.shift()
      pile.push cardVal
      cardsPlayed++

      # payment card so debt is either forgiven for player or assigned to opponent
      if cardVal > 0
        currentDebt = cardVal
        turn = if turn == 'A' then 'B' else 'A'
      else
        # Time to pay up
        if currentDebt > 0
          currentDebt--
          if currentDebt == 0
            # Debt paid off
            otherHand.push pile...
            pile = []
            totalTricks++
            currentDebt = 0
            
            if handA.length == 0 or handB.length == 0
               return { status: 'finished', tricks: totalTricks, cards: cardsPlayed }

            turn = if turn == 'A' then 'B' else 'A'
        else
            turn = if turn == 'A' then 'B' else 'A'

module.exports = Camicia
