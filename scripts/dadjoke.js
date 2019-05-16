// Description:
//   Everyone needs a dad joke
//
// Commands:
//   dad joke
//
// Author:
//   Ben Stafford
module.exports = robot =>
  robot.hear(/.*dad joke.*/i, message => getDadJoke(message))
;

var getDadJoke = message =>
  message.http("https://icanhazdadjoke.com/")
    .header('Accept', 'application/json')
    .header('User-Agent', 'Gaslight Bot')
    .get()(function(err, res, body) {
      const json = JSON.parse(body);
      return message.send(`${json["joke"]}`);
  })
;