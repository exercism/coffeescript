class Sieve
  @primes: (limit) ->
    results = []
    if limit == 1
        return []

    numbers = [2..limit]
    while numbers.length > 0
        [curr, numbers...] = numbers
        results.push curr
        numbers = numbers.filter (n) -> n % curr != 0
    results

module.exports = Sieve
