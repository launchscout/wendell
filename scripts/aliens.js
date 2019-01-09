// Description:
//   All things aliens
//
// Dependencies:
//   None
//
// Configuration:
//   None
//
// Commands:
//   I'm not saying it's aliens - but it's aliens
//
// Author:
//   tmecklem

module.exports = robot =>
  robot.hear(/\bnot saying it.*aliens\b/i, message => message.send('https://imgflip.com/i/src90'))
