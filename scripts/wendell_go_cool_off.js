module.exports = robot =>
  robot.respond(/\bgo cool off for a while\b/i, message => message.send('https://media.giphy.com/media/xY8ApzJMhfgmk/giphy.gif'))
