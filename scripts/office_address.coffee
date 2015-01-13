# Description:
#   Address
#
# Dependencies:
#   None.
#
# Configuration:
#   None.
#
# Commands:
#   hubot /office address/ - where is the office again?
#
# Notes:
#   Where is the office?
#
# Author:
#   cdmwebs

module.exports = (robot) ->
  robot.respond /old office address/i, (msg) ->
    msg.reply "here you go:\n\n    11126 KENWOOD RD STE C\n    BLUE ASH OH 45242-1897"

  robot.respond /office address/i, (msg) ->
    msg.reply "here you go:\n\n    708 Walnut St Ste 400\n    Cincinnati OH 45202-2175"

