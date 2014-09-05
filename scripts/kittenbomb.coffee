# Description:
#   Lots of kittens 
#
# Dependencies:
#   None
#
# Commands:
#   kitten me - get a kitten 
#   kitten bomb - get many kitten 
#
# Author:
#   cdmwebs

kittens = [
  'http://33.media.tumblr.com/238f42b125fe2dc26990588784580b43/tumblr_n2ukm980jV1tw5bhko1_500.gif',
  'http://38.media.tumblr.com/tumblr_mdp11xqyi71qbc3qpo2_500.gif',
  'http://gifsoup.com/webroot/animatedgifs7/2469162_o.gif',
  'http://weknowgifs.com/wp-content/uploads/2013/06/cat-doesnt-know-what-to-do-with-bowl-of-milk.gif',
  'http://24.media.tumblr.com/tumblr_liqd1bRSDi1qzjlrro1_500.gif',
  'http://newgifs.com/images/full/tired-kitten.gif',
  'http://i.kinja-img.com/gawker-media/image/upload/s--KePUFUup--/706042605651277092.gif',
  'http://3.bp.blogspot.com/-tVR9IESFn54/UV2BKYehVAI/AAAAAAAAHTM/8dM0CFuPnms/s1600/funny+Kitten+jump+fail.jpg',
  'http://gifrific.com/wp-content/uploads/2013/11/Cat-Jump-to-Bookshelf-Jump-Fail.gif',
  'http://1.bp.blogspot.com/-AAt0tUl-7A4/Tu155nK6-pI/AAAAAAAACTo/7ENVenrj3wU/s1600/duchebag+kitty.gif',
  'http://24.media.tumblr.com/tumblr_mbz08hLeuF1ryaiojo1_400.gif',
  'http://meowgifs.com/wp-content/uploads/2013/02/cute-mom-bops-kitten.gif',
  'http://img.pandawhale.com/46353-kitten-jump-fail-gif-YO4s.gif',
  'http://gifshost.com/022014/1391975248_cat_jumping_off_table_fail.gif',
  'http://i1082.photobucket.com/albums/j370/Jezey/Fail%20Funny%20Gifs/Kitten-jump-fail.gif'
  'http://chan.catiewayne.com/m/src/134562472131.gif',
  'http://i.imgur.com/wfbtjPj.gif',
  'http://i40.tinypic.com/15etkpg.jpg',
  'http://img.pandawhale.com/52521-Cat-Jump-Fail-Bounce-gif-Co05.gif',
  'http://miltonious.com/wp-content/uploads/2012/05/00-kitty-jump-fail.gif'
]

module.exports = (robot) ->
  robot.respond /kitten me/i, (msg) ->
    msg.send msg.random kittens 

  robot.respond /kitten bomb/i, (msg) ->
    randomSize = msg.random [2, 5, 8, 10, 15]
    sortedKittens = kittens.sort( -> 0.5 * Math.random() ).slice(1, randomSize)
    for kitten in sortedKittens
      msg.send kittens 

