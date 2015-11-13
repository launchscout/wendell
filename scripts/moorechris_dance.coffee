# Description:
#   Dance, Chris Moore!
#
# Dependencies:
#   None.
#
# Configuration:
#   None.
#
# Commands:
#   hubot /dance @cdmwebs/ - show a dancing Moore Chris!
#
# Author:
#   cdmwebs

module.exports = (robot) ->
  robot.hear /dance @?moorechris/i, (msg) ->
    msg.send "http://i.imgur.com/YdI2gTn.gif"
