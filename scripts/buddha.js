// Description:
//   Buddha quotes
//
// Dependencies:
//   None
//
// Commands:
//   enlighten me - get a buddha quote
//   buddha bomb - get much enlightenment
//
// Author:
//   agilous

const quotes = [
  'Do not dwell in the past, do not dream of the future, concentrate the mind on the present moment.',
  'Thousands of candles can be lighted from a single candle, and the life of the candle will not be shortened. Happiness never decreases by being shared.',
  'Three things cannot be long hidden: the sun, the moon, and the truth.',
  'There are only two mistakes one can make along the road to truth; not going all the way, and not starting.',
  'The mind is everything. What you think you become.',
  'Holding on to anger is like grasping a hot coal with the intent of throwing it at someone else; you are the one who gets burned.',
  'No one saves us but ourselves. No one can and no one may. We ourselves must walk the path.',
  'It is better to travel well than to arrive.',
  'You, yourself, as much as anybody in the entire universe, deserve your love and affection.',
  'Just as treasures are uncovered from the earth, so virtue appears from good deeds, and wisdom appears from a pure and peaceful mind. To walk safely through the maze of human life, one needs the light of wisdom and the guidance of virtue.',
  'You will not be punished for your anger, you will be punished by your anger.',
  'We are shaped by our thoughts; we become what we think. When the mind is pure, joy follows like a shadow that never leaves.',
  'Peace comes from within. Do not seek it without.'
]

module.exports = function (robot) {
  robot.respond(/enlighten me/i, msg => msg.send(`> ${msg.random(quotes)}`))

  robot.respond(/buddha bomb( (\d+))?/i, (msg) => {
    const count = msg.match[2] || 5
    let i = 0
    return (() => {
      const result = []
      while ((i < count) && (quotes.length > 0)) {
        const index = Math.floor(Math.random() * quotes.length)
        const quote = quotes.splice(index, 1)[0]
        msg.send(`> ${quote}`)
        result.push(i++)
      }
      return result
    })()
  })
}
