// Description:
//   Lots of kittens
//
// Dependencies:
//   None
//
// Commands:
//   kitten me - get a kitten
//   kitten bomb - get many kitten
//
// Author:
//   heflinao

const kittens = [
  'http://33.media.tumblr.com/238f42b125fe2dc26990588784580b43/tumblr_n2ukm980jV1tw5bhko1_500.gif',
  'http://38.media.tumblr.com/tumblr_mdp11xqyi71qbc3qpo2_500.gif',
  'http://24.media.tumblr.com/tumblr_liqd1bRSDi1qzjlrro1_500.gif',
  'http://i.kinja-img.com/gawker-media/image/upload/s--KePUFUup--/706042605651277092.gif',
  'http://3.bp.blogspot.com/-tVR9IESFn54/UV2BKYehVAI/AAAAAAAAHTM/8dM0CFuPnms/s1600/funny+Kitten+jump+fail.jpg',
  'http://gifrific.com/wp-content/uploads/2013/11/Cat-Jump-to-Bookshelf-Jump-Fail.gif',
  'http://24.media.tumblr.com/tumblr_mbz08hLeuF1ryaiojo1_400.gif',
  'http://meowgifs.com/wp-content/uploads/2013/02/cute-mom-bops-kitten.gif',
  'http://i1082.photobucket.com/albums/j370/Jezey/Fail%20Funny%20Gifs/Kitten-jump-fail.gif',
  'http://chan.catiewayne.com/m/src/134562472131.gif',
  'http://i.imgur.com/wfbtjPj.gif',
  'http://i40.tinypic.com/15etkpg.jpg'
]

module.exports = function (robot) {
  robot.respond(/kitten me/i, msg => msg.send(msg.random(kittens)))

  robot.respond(/kitten bomb/i, function (msg) {
    const randomSize = msg.random([2, 5, 8, 10, 15])
    const sortedKittens = kittens.sort(() => 0.5 * Math.random()).slice(1, randomSize)
    return Array.from(sortedKittens).map((kitten) =>
      msg.send(kittens))
  })
}
