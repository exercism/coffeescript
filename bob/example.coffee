class Bob
    hey: (message) -> switch
        when message.trim() == "" then "Fine. Be that way!"
        when message.match(/[a-zA-Z]/) and message == message.toUpperCase() then "Whoa, chill out!"
        when message[message.length - 1] == "?" then "Sure."
        else "Whatever."
module.exports = Bob
