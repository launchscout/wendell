// Description
//   Remembers a key and value
//
// Commands:
//   hubot what is|remember <key> - Returns a string
//   hubot remember <key> is <value>. - Returns nothing. Remembers the text for next time!
//   hubot what do you remember - Returns everything hubot remembers.
//   hubot forget <key> - Removes key from hubots brain.
//   hubot what are your favorite memories? - Returns a list of the most remembered memories.
//   hubot random memory - Returns a random string
//
// Dependencies:
//   "underscore": "*"

const _ = require('underscore')

module.exports = function (robot) {
  const memoriesByRecollection = () => robot.brain.data.memoriesByRecollection != null ? robot.brain.data.memoriesByRecollection : (robot.brain.data.memoriesByRecollection = {})
  const memories = () => robot.brain.data.remember != null ? robot.brain.data.remember : (robot.brain.data.remember = {})

  const findSimilarMemories = function (key) {
    const searchRegex = new RegExp(key, 'i')
    return Object.keys(memories()).filter(key => searchRegex.test(key))
  }

  robot.respond(/(?:what is|rem(?:ember)?)\s+(.*)/i, function (msg) {
    let key, match, value
    const words = msg.match[1]
    if (match = words.match(/(.*?)(\s+is\s+([\s\S]*))$/i)) {
      msg.finish()
      key = match[1].toLowerCase()
      value = match[3]
      const currently = memories()[key]
      if (currently) {
        return msg.send(`But ${key} is already ${currently}.  Forget ${key} first.`)
      } else {
        memories()[key] = value
        return msg.send(`OK, I'll remember ${key}.`)
      }
    } else if (match = words.match(/([^?]+)\??/i)) {
      msg.finish()

      key = match[1].toLowerCase()
      value = memories()[key]

      if (value) {
        let base
        if ((base = memoriesByRecollection())[key] == null) { base[key] = 0 }
        memoriesByRecollection()[key]++
      } else {
        let matchingKeys
        if (match = words.match(/\|\s*(grep\s+)?(.*)$/i)) {
          const searchPattern = match[2]
          matchingKeys = findSimilarMemories(searchPattern)
          if (matchingKeys.length > 0) {
            value = `I remember:\n${matchingKeys.join('\n')}`
          } else {
            value = `I don't remember anything matching \`${searchPattern}\``
          }
        } else {
          matchingKeys = findSimilarMemories(key)
          if (matchingKeys.length > 0) {
            const keys = matchingKeys.join('\n')
            value = `I don't remember \`${key}\`. Did you mean:\n${keys}`
          } else {
            value = `I don't remember anything matching \`${key}\``
          }
        }
      }

      return msg.send(value)
    }
  })

  robot.respond(/forget\s+(.*)/i, function (msg) {
    const key = msg.match[1].toLowerCase()
    const value = memories()[key]
    delete memories()[key]
    delete memoriesByRecollection()[key]
    return msg.send(`I've forgotten ${key} is ${value}.`)
  })

  robot.respond(/what do you remember/i, function (msg) {
    msg.finish()
    const keys = []
    for (let key in memories()) { keys.push(key) }
    return msg.send(`I remember:\n${keys.join('\n')}`)
  })

  robot.respond(/what are your favorite memories/i, function (msg) {
    msg.finish()
    const sortedMemories = _.sortBy(Object.keys(memoriesByRecollection()), key => memoriesByRecollection()[key])
    sortedMemories.reverse()

    return msg.send(`My favorite memories are:\n${sortedMemories.slice(0, 21).join('\n')}`)
  })

  robot.respond(/(me|random memory|memories)$/i, function (msg) {
    msg.finish()
    const randomKey = msg.random(Object.keys(memories()))
    msg.send(randomKey)
    return msg.send(memories()[randomKey])
  })

  return robot.respond(/mem(ory)? bomb x?(\d+)/i, function (msg) {
    let count
    const keys = []
    const object = memories()
    for (let key in object) { const value = object[key]; keys.push(value) }
    if (!msg.match[2]) {
      count = 10
    } else {
      count = parseInt(msg.match[2])
    }

    return __range__(1, count, true).map((i) => msg.send(msg.random(keys)))
  })
}
function __range__ (left, right, inclusive) {
  let range = []
  let ascending = left < right
  let end = !inclusive ? right : ascending ? right + 1 : right - 1
  for (let i = left; ascending ? i < end : i > end; ascending ? i++ : i--) {
    range.push(i)
  }
  return range
}
