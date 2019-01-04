// Description:
//   No Ragrets
//
// Dependencies:
//   None
//
// Configuration:
//   None
//
// Commands:
//   no ragrets
//
// Author:
//   janders223

module.exports = robot =>
  robot.hear(/\bno ragrets\b/i, message => message.send('http://i.ytimg.com/vi/pSW2FDXuFe4/maxresdefault.jpg'))
