class SpaceAge
  EARTH_SECONDS = 31557600

  @onEarth: (seconds) ->
    seconds / EARTH_SECONDS

  @onMercury: (seconds) ->
    @onEarth seconds / 0.2408467

  @onVenus: (seconds) ->
    @onEarth seconds / 0.61519726

  @onMars: (seconds) ->
    @onEarth seconds / 1.8808158

  @onJupiter: (seconds) ->
    @onEarth seconds / 11.862615

  @onSaturn: (seconds) ->
    @onEarth seconds / 29.447498

  @onUranus: (seconds) ->
    @onEarth seconds / 84.016846

  @onNeptune: (seconds) ->
    @onEarth seconds / 164.79132

module.exports = SpaceAge
