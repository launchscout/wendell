// Description:
//   responds accordingly

const image = "https://cdn.iconverticons.com/files/png/abe31f4448fb9bc7_256x256.png"

module.exports = robot => {
  robot.hear(/:troll:/i, message => for(x = (Math.random() * 100).toFixed(); x+= -1; x == 0) {
    message.send(image);
  });
}
