// Description:
//   Gifs of maru, inspired by pugme
//
// Dependencies:
//   None
//
// Configuration:
//   None
//
// Commands:
//   hubot maru me - Receive a maru
//   hubot quantum maru - Everyone gets a different maru
//   hubot maru bomb - Receive 5 marus
//   hubot maru bomb N - Receive N<=10 marus

const xml2js = require('xml2js')
const parser = new xml2js.Parser({ strict: false })

const getMarus = (count, response) => {
  response.http(`http://marume.herokuapp.com/random/${count}.html`).get()((err, res, body) => {
    if (err) {
      console.log(err.stack)
    } else {
      parser.parseString(body, (error, data) => {
        if (error) {
          console.log(error.stack)
        } else {
          Array.from(data['HTML']['IMG']).map((image) => response.send(image['$']['SRC']))
        }
      })
    }
  })
}

const cacheBustedUrl = iter => `http://marume.herokuapp.com/random.gif?${iter}-${Date.now()}`

module.exports = function (robot) {
  robot.respond(/quantum( of)? maru/i, response => response.send(cacheBustedUrl(1)))

  robot.respond(/maru me/i, response => getMarus(1, response))

  robot.respond(/maru bomb( (\d+))?/i, function (response) {
    let count = response.match[2] || 5
    count = count <= 10 ? count : 10
    return getMarus(count, response)
  })
}
