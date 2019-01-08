module.exports = robot => {
  robot.hear(/.*Tim.*\:taco\:.*/i, message => message.send('@Ben#2701 :taco: :taco: :taco:'))
}
