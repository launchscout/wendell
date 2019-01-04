// Description:
//   Just being nice, that's all.
//
// Dependencies:
//   None.
//
// Configuration:
//   None.
//
// Commands:
//   hubot thank(s| you) - respond to kindness.
//   thank(s| you) hubot - respond to kindness.
//   h(ello|i) hubot - say hello
//   hubot h(ello|i) - say hello
//
// Notes:
//   Nothing special. Be nice ;)
//
// Author:
//   cdmwebs

const greetings = [
  'hello!',
  'hi there!',
  "what's up?",
  'yo!'
]

const messages = [
  "I hope you're having a wonderful day.",
  "How's everything?",
  "You're awesome. Did you know that?"
]

module.exports = function (robot) {
  const sayHello = (msg) => {
    const greeting = msg.random(greetings)
    const message = msg.random(messages)
    return msg.reply(`${greeting} ${message}`)
  }

  const sayThanks = msg => msg.reply("you're welcome! I serve at your pleasure.")

  robot.hear(new RegExp(`thank(s| you) ${robot.name}`, 'i'), msg => sayThanks(msg))
  robot.respond(/thank(s| you)/, msg => sayThanks(msg))
  robot.hear(new RegExp(`h(ello|i) ${robot.name}`, 'i'), msg => sayHello(msg))
  robot.respond(/h(ello|i)/, msg => sayHello(msg))
}
