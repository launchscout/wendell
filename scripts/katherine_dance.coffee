# Description:
#   Dance, Katherine!
#
# Dependencies:
#   None.
#
# Configuration:
#   None.
#
# Commands:
#   hubot /dance @katherine/ - show a dancing Katherine!
#
# Author:
#   cdmwebs

module.exports = (robot) ->
  robot.hear /dance @?katherine/i, (msg) ->
    msg.send "http://giant.gfycat.com/FastHastyEasteuropeanshepherd.gif"
