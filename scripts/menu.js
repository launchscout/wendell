// Description:
//   Get a menu. Results may vary.
//
// Commands:
//   wendell, what's for dinner?

const request = require('request');

module.exports = robot => robot.respond(/what's for dinner?/i, message => getMenu(message));

var getMenu = message =>
  request(`https://api.datamuse.com/words?topics=snack&max=1000`, { json: true }, (err, res, body) => {
    if (err) { return console.log(err); }

    const one = body[Math.floor(Math.random() * body.length)].word;
    const two = body[Math.floor(Math.random() * body.length)].word;
    const three = body[Math.floor(Math.random() * body.length)].word;
    const four = body[Math.floor(Math.random() * body.length)].word;
    const five = body[Math.floor(Math.random() * body.length)].word;

    message.send(`Might I suggest ${one} served hot, on a bed of fresh ${two}? Followed by ${three} topped with ${four}, and ending with a decadent, glazed ${five}?`);
  })
;
