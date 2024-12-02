class Bob
    hey: (message) ->
      message = message.trim()
      switch
          when message == "" then "Fine. Be that way!"
          when message.match(/[a-zA-Z]/) and message == message.toUpperCase() and message[message.length - 1] == "?" then "Calm down, I know what I'm doing!"
          when message.match(/[a-zA-Z]/) and message == message.toUpperCase() then "Whoa, chill out!"
          when message[message.length - 1] == "?" then "Sure."
          else "Whatever."
module.exports = Bob
