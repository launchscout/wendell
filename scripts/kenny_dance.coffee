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
  robot.respond /dance @kenny/i, (msg) ->
    msg.reply "http://i.imgur.com/JW7HIc8.gif"

