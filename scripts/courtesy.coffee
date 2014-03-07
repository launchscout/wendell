# Description:
#   Just being nice, that's all.
#
# Dependencies:
#   None.
#
# Configuration:
#   None.
#
# Commands:
#   hubot thank(s| you) - respond to kindness.
#   thank(s| you) hubot - respond to kindness.
#
# Notes:
#   Nothing special. Be nice ;)
#
# Author:
#   cdmwebs
module.exports = (robot) ->
  robot.hear 'thank(s| you) ' + robot.name, (msg) ->
    sayThanks(msg)

  robot.respond /thank(s| you)/, (msg) ->
    sayThanks(msg)

  sayThanks = (msg) ->
    msg.reply "you're welcome! I serve at your pleasure."
