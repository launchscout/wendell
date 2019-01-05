// Description:
//   Sometimes you just have to wreck it
//
// Dependencies:
//   None
//
// Configuration:
//   None
//
// Commands:
//   table flip - All the best table flipping memes
//
// Author:
//   tmecklem

const tableFlipImages = [
  'https://media.giphy.com/media/X83Y7r03T6uty/giphy.gif',
  'https://media.giphy.com/media/BmnbtcKKBGqfS/giphy.gif',
  'https://media.giphy.com/media/MXWpHJhkIDFU4/giphy.gif',
  'https://media.giphy.com/media/htKsHr2W6Y6Qg/giphy.gif',
  'https://media.giphy.com/media/IboGSjkXaOre0/giphy.gif',
  'http://i.imgur.com/ForPOJQ.gif'
]

module.exports = robot => {
  robot.hear(/(flip a table)|(table flip)/i, message => message.send(message.random(tableFlipImages)))
}
