// Description:
//   Address
//
// Dependencies:
//   None.
//
// Configuration:
//   None.
//
// Commands:
//   hubot /office address/ - where is the office again?
//
// Notes:
//   Where is the office?
//
// Author:
//   cdmwebs

module.exports = function (robot) {
  robot.respond(/office address/i, msg => msg.reply('here you go:\n\n    708 Walnut St Ste 500\n    Cincinnati OH 45202-2175'))
}
