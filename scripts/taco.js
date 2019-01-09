module.exports = robot =>
  robot.hear(/.*tim.*\:taco\:.*/i, message => message.send('@Ben#2701 :antitaco: :antitaco: :antitaco:'))
