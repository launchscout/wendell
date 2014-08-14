# Description:
#   Carl Sagan quotes
#
# Dependencies:
#   None
#
# Commands:
#   sagan me - get a carl sagan quote
#   pizza bomb - get many pizza
#
# Author:
#   cdmwebs

quotes = [
  "Every one of us is, in the cosmic perspective, precious. If a human disagrees with you, let him live. In a hundred billion galaxies, you will not find another.",
  "If you wish to make an apple pie from scratch, you must first invent the universe.",
  "We are a way for the cosmos to know itself.",
  "The beauty of a living thing is not the atoms that go into it, but the way those atoms are put together.",
  "The Cosmos is all that is or was or ever will be. Our feeblest contemplations of the Cosmos stir us -- there is a tingling in the spine, a catch in the voice, a faint sensation, as if a distant memory, of falling from a height. We know we are approaching the greatest of mysteries.",
  "The size and age of the Cosmos are beyond ordinary human understanding. Lost somewhere between immensity and eternity is our tiny planetary home. In a cosmic perspective, most human concerns seem insignificant, even petty. And yet our species is young and curious and brave and shows much promise. In the last few millennia we have made the most astonishing and unexpected discoveries about the Cosmos and our place within it, explorations that are exhilarating to consider. They remind us that humans have evolved to wonder, that understanding is a joy, that knowledge is prerequisite to survival. I believe our future depends on how well we know this Cosmos in which we float like a mote of dust in the morning sky.",
  "Observation: I can't see a thing. Conclusion: Dinosaurs.",
  "One of the saddest lessons of history is this: If we've been bamboozled long enough, we tend to reject any evidence of the bamboozle. We're no longer interested in finding out the truth. The bamboozle has captured us. It is simply too painful to acknowledge -- even to ourselves -- that we've been so credulous. (So the old bamboozles tend to persist as the new bamboozles rise.)",
  "The nitrogen in our DNA, the calcium in our teeth, the iron in our blood, the carbon in our apple pies were made in the interiors of collapsing stars. We are made of starstuff."
]

module.exports = (robot) ->
  robot.respond /sagan me/i, (msg) ->
    msg.send msg.random quotes

