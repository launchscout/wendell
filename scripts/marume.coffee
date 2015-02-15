# Description:
#   Gifs of maru, inspired by pugme
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot maru me - Receive a maru
#   hubot maru bomb - Receive 5 marus
#   hubot maru bomb N - Receive N<=10 marus

module.exports = (robot) ->

  robot.respond /maru me/i, (message) ->
    message.send "http://marume.herokuapp.com/random.gif"

  robot.respond /maru bomb( (\d+))?/i, (message) ->
    count = message.match[2] || 5
    count = if count <= 10 then count else 10
    message.send "http://marume.herokuapp.com/random.gif" for [1..count]
