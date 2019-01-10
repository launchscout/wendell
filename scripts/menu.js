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

    const menuArray = [
      `Might I suggest ${one} served hot, on a bed of fresh ${two}? Followed by ${three} topped with ${four}, and ending with a decadent, glazed ${five}?`,
      `Let’s start with a ${one} soup. Then, move on to mulberry wood smoked ${two} with a side of ${three}. For desert, how about ${four} pie with a scoop of ${five} ice cream?`,
      `Braised ${one} with a creamy ${two} sauce, topped with ${three} infused ${four}.`,
      `${one} and ${two} in aspic, and boiled ${three} with ${four} gravy.`
    ]

    message.send(menuArray[Math.floor(Math.random() * menuArray.length)]);
  })
;
