// Description:
//   Ideates
//
// Commands:
//   hubot I need an idea
module.exports = robot =>

  robot.respond(/.*needs? a.* idea/i, message => getStartupIdea(message))
;

var getStartupIdea = message =>
  message.http("http://itsthisforthat.com/api.php?json")
    .get()(function(err, res, body) {
      const json = JSON.parse(body);
      return message.send(`How about: ${json["this"]} for ${json["that"]}?`);
  })
;
