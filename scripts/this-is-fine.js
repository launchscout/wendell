// Description:
//   We're going to be okay. Don't worry about the fire
//
// Dependencies:
//   None
//
// Configuration:
//   None
//
// Commands:
//   this is fine - no, really, at least there's probably coffee
//
// Author:
//   tmecklem

module.exports = robot =>
  robot.hear(/\bthis is fine\b/i, message => message.send('https://giphy.com/gifs/form-z9AUvhAEiXOqA'))
