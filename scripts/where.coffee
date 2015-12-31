# Description:
#   Where's the pizza?
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   where's the pizza? - Thanks J-Law
#
# Author:
#   janders223

module.exports = (robot) ->
  robot.hear /\bwhere's the pizza?\b/i, (message) ->
    message.send "http://media.giphy.com/media/TWOlDspB628Rq/giphy.gif"

