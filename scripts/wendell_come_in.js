module.exports = robot =>
  robot.respond(/\bcome in here\b/i, message => message.send('https://gph.is/1hOcpDA'))
