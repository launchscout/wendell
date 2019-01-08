// Description:
//   validates you.
//
// Commands:
//   hubot validate me - Be validated.
const validations = [
  "https://s3.amazonaws.com/assets.choremonster.com/hubot/chowyunfat.gif",
  "https://s3.amazonaws.com/assets.choremonster.com/hubot/phil.gif",
  "http://i.imgur.com/0b7zA.gif",
  "https://media.giphy.com/media/vp5ZHZ6OI31LO/giphy.gif",
  "http://i.imgur.com/jdIgXtN.gif"
];

const validation = msg => msg.send(msg.random(validations));

module.exports = robot =>
  robot.hear(/validate me/i, msg => validation(msg))
;
