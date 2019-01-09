module.exports = robot =>
  robot.hear(/\bheavy breathing\b/i, message => message.send('https://giphy.com/gifs/heavy-breathing-FZuRP6WaW5qg'))
