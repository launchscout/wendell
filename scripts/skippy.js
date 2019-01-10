module exports = robot =>
  robot.respond(/\bwhat's the best brand of peanut butter?\b/i, message => message.send('Skippy. Change my mind.'))
