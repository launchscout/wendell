// Description:
//  Wakey wakey eggs and bac-ey
//
// Dependencies:
//   None
//
// Configuration:
//   None
//
// Commands:
//  Eggs and bacon
//
// Author:
//   tmecklem

module.exports = robot => {
  robot.hear(/\b(eggs (&|(and)|n'?) bacon)|(bacon (&|(and)|n'?) eggs)\b/i, message => message.send('https://media.giphy.com/media/8s1bWO7hckdW/giphy.gif'))
}
