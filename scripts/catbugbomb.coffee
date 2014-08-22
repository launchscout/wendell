# Description:
#   Lots of catbugs
#
# Dependencies:
#   None
#
# Commands:
#   catbug me - get a catbug
#   catbug bomb - get many catbug
#
# Author:
#   heflinao

catbugs = [
  'http://i.imgur.com/eaF2r1U.gif',
  'http://media.giphy.com/media/j2rCxv6luaLq8/giphy.gif',
  'http://media.giphy.com/media/3f6yGRBkD6skU/giphy.gif',
  'http://fc08.deviantart.net/fs70/f/2014/067/e/3/catbug_nod_gif_by_nickyparsonavenger-d75i157.gif',
  'http://24.media.tumblr.com/0172030308d6960cbb742fc8943d14cb/tumblr_mjsmgnXLv21qhszhwo1_500.gif',
  'http://thoughtcatalog.files.wordpress.com/2013/05/5.gif?w=500&h=281',
  'http://stream1.gifsoup.com/view8/4711695/catbug-throw-a-blanket-over-it-o.gif',
  'https://i.chzbgr.com/maxW500/7935750400/h540D9086/',
  'http://img3.wikia.nocookie.net/__cb20140312153641/bravestwarriors/images/2/21/Catbugcrayons.jpg',
  'http://media.tumblr.com/0181965f4b309ccf40a13d965e03a60f/tumblr_inline_mlrxebXsYg1qz4rgp.gif',
  'http://media3.giphy.com/media/H87TugWWaTzKE/200_s.gif',
  'http://media1.giphy.com/media/oyYeUcIwDOd3O/200_s.gif',
  'http://thoughtcatalog.files.wordpress.com/2013/05/6.gif',
  'http://31.media.tumblr.com/737b29032cbf1f2d798e0558bb1abc5e/tumblr_mh5k4ttOYC1qeg3czo1_500.gif',
  'http://37.media.tumblr.com/38a415b04d1711eac3fcffc382359068/tumblr_mjck4sk85a1r2y7r9o1_r1_500.gif',
  'http://ih1.redbubble.net/image.14382476.6607/fc,550x550,white.u1.jpg',
  'http://medias.gifboom.com/medias/t_11ca61af444648168b4b3f4fad2c5232.jpg',
  'http://img4.wikia.nocookie.net/__cb20140312154115/bravestwarriors/images/d/dd/CatbugStalks.jpg',
  'http://38.media.tumblr.com/d06641c73378cdca5aefad70a6b17d81/tumblr_ms6zs4B62z1s2r9z3o5_r2_400.gif',
  'http://38.media.tumblr.com/227533df6df604fb7edfffe94fa46fb5/tumblr_mrl6lnyF8W1qd4796o1_500.gif',
  'http://38.media.tumblr.com/421f98309b291f3364bc7c2887788c4e/tumblr_mr1gktpvQO1s6x4aoo2_500.gif',
  'http://38.media.tumblr.com/aeffa9663317dfa8e0c5ea690d88181d/tumblr_mr1gktpvQO1s6x4aoo1_500.gif',
  'http://medias.gifboom.com/medias/t_592f3cb541524198af68725ed23c1c55.jpg'
]

module.exports = (robot) ->
  robot.respond /catbug me/i, (msg) ->
    msg.send msg.random catbugs

  robot.respond /catbug bomb/i, (msg) ->
    randomSize = msg.random [2, 5, 8, 10, 15]
    sortedCatbugs = catbugs.sort( -> 0.5 * Math.random() ).slice(1, randomSize)
    for catbug in sortedCatbugs
      msg.send catbug

