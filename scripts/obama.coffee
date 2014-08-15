# Description:
#   Thanks Obama!
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   thanks obama - Deal with it
#
# Author:
#   janders223

module.exports = (robot) ->
  robot.hear /\bthanks obama\b/i, (message) ->
    message.send "http://0.tqn.com/d/politicalhumor/1/S/W/u/4/obama-deal-with-it.gif"
