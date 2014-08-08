# Description:
#   Lots of pizzas
#
# Dependencies:
#   None
#
# Commands:
#   pizza me - get a pizza
#   pizza bomb - get many pizza
#
# Author:
#   cdmwebs

pizzas = [
  "http://37.media.tumblr.com/tumblr_lmi3wtiR3c1qaphrco1_500.gif",
  "http://38.media.tumblr.com/tumblr_ln0hkq0jOg1qiftoro1_500.gif",
  "http://38.media.tumblr.com/tumblr_lp4b8eGqJ31qjb3mno1_500.gif",
  "http://33.media.tumblr.com/tumblr_lq5a0vPIXI1qg28gno1_500.gif",
  "http://38.media.tumblr.com/tumblr_ltaje3Atoi1qgwqw9o1_500.gif",
  "http://38.media.tumblr.com/tumblr_ly9ph18cJF1qdaaw6o1_500.gif",
  "http://38.media.tumblr.com/tumblr_m9598h2Rr91rrosg1o6_250.gif"
]

module.exports = (robot) ->
  regex = /pizza me/i
  robot.hear regex, (msg) ->
    msg.send msg.random pizzas

