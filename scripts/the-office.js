// Description:
//   The Office references
//
// Dependencies:
//   None
//
// Configuration:
//   None
//
// Commands:
//   pizza by alfredo - it's a hot circle of garbage
//
// Author:
//   Tim

module.exports = robot => {
  robot.hear(/\bpizza by alfredo\b/i, (msg) => {
    return msg.send('https://mtgcardsmith.com/view/complete/full/2018/9/15/1537037410352905.png')
  })

  robot.hear(/\blearn ((the)|(your)) rules\b/i, (msg) => {
    return msg.send('http://gph.is/1hbfQyK')
  })
}


