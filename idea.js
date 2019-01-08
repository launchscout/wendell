// Description:
//   Ideates
//
// Commands:
//   hubot I need an idea
module.exports = robot =>

  robot.respond(/.*needs? a.* idea/i, msg => getStartupIdea(msg))
;

var getStartupIdea = msg =>
  msg.http("http://itsthisforthat.com/api.php?json")
    .get()(function(err, res, body) {
      const json = JSON.parse(body);
      return msg.send(`How about: ${json["this"]} for ${json["that"]}?`);
  })
;
