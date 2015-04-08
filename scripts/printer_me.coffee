# Description:
#   Printer IP
#
# Dependencies:
#   None.
#
# Configuration:
#   None.
#
# Commands:
#   hubot /printer me/ - what's the IP for the printer?
#
# Notes:
#   What's the printer's IP address?
#
# Author:
#   cdmwebs

module.exports = (robot) ->
  robot.respond /printer me/i, (msg) ->
    msg.reply "here you go:\n\n    10.20.30.5"

