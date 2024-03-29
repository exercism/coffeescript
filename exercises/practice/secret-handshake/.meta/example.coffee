class SecretHandshake
  @commands: (number) ->
    actions = allowed_actions.filter (_, i) -> number & Math.pow 2, i
    if number & Math.pow 2, 4
      actions.reverse()
    else
      actions

allowed_actions = ["wink", "double blink", "close your eyes", "jump"]

module.exports = SecretHandshake
