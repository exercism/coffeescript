class Prism
  @findSequence: (start, prisms) ->
    {x, y, angle} = start
    sequence = []

    loop
      rad = angle * Math.PI / 180
      dirX = Math.cos rad
      dirY = Math.sin rad

      # Find the nearest prism along the ray
      nearest = null
      nearestDist = Infinity

      for prism in prisms
        dx = prism.x - x
        dy = prism.y - y

        # how far along the ray is the prism?
        dist = dx * dirX + dy * dirY
        # ignore prisms behind us
        continue unless dist > 1e-6

        # how far off center is the prism?
        crossSq = (dx - dist * dirX) ** 2 + (dy - dist * dirY) ** 2

        # Bail if outside relative tolerance (more wiggle room for further prisms)
        continue unless crossSq < 1e-6 * (Math.max 1, dist * dist)

        if dist < nearestDist
          nearestDist = dist
          nearest = prism

      break unless nearest

      sequence.push nearest.id
      x = nearest.x
      y = nearest.y
      angle = (angle + nearest.angle) % 360

    sequence

module.exports = Prism
