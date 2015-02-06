# Description:
#   Dance, Kenny Glenn!
#
# Dependencies:
#   None.
#
# Configuration:
#   None.
#
# Commands:
#   hubot /dance @kenny/ - show a dancing Kenny Glenn!
#
# Author:
#   cdmwebs

module.exports = (robot) ->
  robot.hear /dance @kenny/i, (msg) ->
    msg.send "http://i.imgur.com/JW7HIc8.gif"

