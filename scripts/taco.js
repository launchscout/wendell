module.exports = robot => {
  robot.hear(/.*Tim(.*)/i, res => {
    if (res.match[1].match(/.*🌮.*/)) {
      res.send('@Ben#2701 :taco: :taco: :taco:')
    }

  })
}
