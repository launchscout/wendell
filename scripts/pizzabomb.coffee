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
  "http://38.media.tumblr.com/tumblr_ltaje3Atoi1qgwqw9o1_500.gif",
  "http://38.media.tumblr.com/tumblr_ly9ph18cJF1qdaaw6o1_500.gif",
  "http://38.media.tumblr.com/tumblr_m9598h2Rr91rrosg1o6_250.gif",
  "http://31.media.tumblr.com/tumblr_lrkto47Trh1qzgjfco1_500.gif",
  "http://media1.giphy.com/media/nlrOXQzYIGzjG/200.gif",
  "http://a.fod4.com/misc/Diamond%20Pizza.gif",
  "http://animatedpizzagifs.com/images/epilleptic-cosby-pizza-perfection.gif",
  "http://media2.giphy.com/media/m1wx93jaiHj3O/200_s.gif",
  "http://media.giphy.com/media/jiv3km2dt7Fg4/giphy.gif",
  "http://24.media.tumblr.com/2c07c6dd0db42f989bf47b741cb4516f/tumblr_msxw68bnA21r4xjo2o1_250.gif",
  "http://33.media.tumblr.com/200bdf0364f5482e3afbfe03f51b6f9d/tumblr_mghlfuodK01rjf826o1_400.gif",
  "http://media0.giphy.com/media/9B5EkgWrF4Rri/200.gif"
]

module.exports = (robot) ->
  regex = /pizza me/i
  robot.hear regex, (msg) ->
    msg.send msg.random pizzas
