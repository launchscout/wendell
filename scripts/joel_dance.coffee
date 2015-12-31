# Description:
#   Dance, Joel!
#
# Dependencies:
#   None.
#
# Configuration:
#   None.
#
# Commands:
#   hubot /dance @cdmwebs/ - show a dancing Joel!
#
# Author:
#   cdmwebs

module.exports = (robot) ->
  robot.hear /dance @?joel/i, (msg) ->
    msg.send "http://i.imgur.com/c8Jh6aQ.gif"
