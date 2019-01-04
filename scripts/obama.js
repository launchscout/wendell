// Description:
//   Thanks Obama!
//
// Dependencies:
//   None
//
// Configuration:
//   None
//
// Commands:
//   thanks obama - Deal with it
//
// Author:
//   janders223

module.exports = robot =>
  robot.hear(/\bthanks obama\b/i, message => message.send('https://i.pinimg.com/originals/67/4f/4d/674f4d37697dbb0a269c43adc2929f9d.jpg'))
