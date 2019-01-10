const jackie = [
  "https://media.giphy.com/media/9pklZGUcreyfm/giphy.gif",
  "https://media.giphy.com/media/h3e8Hr4bBndS0/giphy.gif",
  "https://media.giphy.com/media/5xtDarKaxbNRjKhGe2c/giphy.gif",
  "https://media.giphy.com/media/YGXr4RYSF0FW/giphy.gif",
  "https://media.giphy.com/media/3o7abtRKyllr9iQZ1K/giphy.gif",
  "https://media.giphy.com/media/10W7YOp7PaMVxu/giphy.gif",
  "https://media.giphy.com/media/xT9DPLBZEnek4zvEQg/giphy.gif",
  "https://media.giphy.com/media/xT9DPjOy0lxRvRGNXi/giphy.gif",
  "https://media.giphy.com/media/9jKPtWhufybHa/giphy.gif"
];

module.exports = robot =>
  robot.hear(/jackie chan/i, message => message.send(message.random(jackie)))
