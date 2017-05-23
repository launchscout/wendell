# Description:
#   Gifs of maru, inspired by pugme
#
# Dependencies:
#   "xml2js": "^0.4.8"
#
# Configuration:
#   None
#
# Commands:
#   hubot maru me - Receive a maru
#   hubot quantum maru - Everyone gets a different maru
#   hubot maru bomb - Receive 5 marus
#   hubot maru bomb N - Receive N<=10 marus

xml2js = require 'xml2js'
parser = new xml2js.Parser {strict: false}

getMarus = (count, message) ->
  message.http("http://marume.herokuapp.com/random/#{count}.html").get() (err, res, body) ->
    parser.parseString body, (err, data) ->
      unless err?
        message.send image['$']['SRC'] for image in data['HTML']['IMG']

module.exports = (robot) ->
  robot.respond /quantum( of)? maru/i, (message) ->
    message.send "http://marume.herokuapp.com/random.gif?#{Date.now()}"

  robot.respond /maru me/i, (message) ->
    getMarus(1, message)

  robot.respond /maru bomb( (\d+))?/i, (message) ->
    count = message.match[2] || 5
    count = if count <= 10 then count else 10
    getMarus(count, message)
