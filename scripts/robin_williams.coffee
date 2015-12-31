# Description:
#   Robin Williams
#
# Dependencies:
#   None
#
# Commands:
#   robin me - get a robin
#   robin bomb - get many robin
#
# Author:
#   heflinao
#

robins = [
  "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQ0T8i1d3RO-SfGSTV0XKOh90EnX2Vssxc4ivL7ZUSX6013rEm6",
  "http://31.media.tumblr.com/470aa2d378492376096ee8275a947e9d/tumblr_na6yeyTSTb1rnma1do1_250.gif",
  "http://i.imgur.com/EygpBLK.gif",
  "http://25.media.tumblr.com/d82db90056b5a2de464a9b0fed65ff33/tumblr_mgfnzqIBpL1rb5iuho4_250.gif",
  "http://24.media.tumblr.com/tumblr_m25706cNOI1qczq24o6_250.gif",
  "http://gifsoup.com/webroot/animatedgifs7/2956327_o.gif"
]

module.exports = (robot) ->
  robot.respond /robin me/i, (msg) ->
    msg.send msg.random robins

  robot.respond /robin bomb/i, (msg) ->
    sortedRobins = robins.sort( -> 0.5 * Math.random()).slice(1, 7)
    for robin in sortedRobins
      msg.send robin

