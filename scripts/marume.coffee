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

cacheBustedUrl = (iter) ->
 "http://marume.herokuapp.com/random.gif?#{iter}-#{Date.now()}"

module.exports = (robot) ->

  robot.respond /maru me/i, (message) ->
    message.send cacheBustedUrl(1)

  robot.respond /maru bomb( (\d+))?/i, (message) ->
    count = message.match[2] || 5
    count = if count <= 10 then count else 10
    message.send cacheBustedUrl(i) for i in [1..count]
