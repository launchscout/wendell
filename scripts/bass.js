// Description:
//   Drop the bass!
//
// Dependencies:
//   None
//
// Configuration:
//   None
//
// Commands:
//   drop the bass - D..D...DROP THE BASS!
//
// Author:
//   janders223

module.exports = robot =>
  robot.hear(/\bdrop the bass\b/i, message => message.send('http://i.imgur.com/yy4QHgx.gif'))
