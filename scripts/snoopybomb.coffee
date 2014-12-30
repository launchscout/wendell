# Description:
#   Lots of snoopy's
#
# Dependencies:
#   None
#
# Commands:
#   snoopy me - get a snoopy
#   snoppy bomb - get many snoopy
#
# Author:
#   heflinao

snoopies = [
  'http://i.imgur.com/FOBku24.gif',
  'https://36.media.tumblr.com/tumblr_m8ttzna1lx1ql4ucto5_500.jpg',
  'http://i.dailymail.co.uk/i/pix/2013/10/08/article-2449836-189BEC7700000578-952_634x441.jpg',
  'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTC1uKczxmDVSRt2Fx1LsGL5Uq--QHN1mB9G-b6AMnwIzNPHnaz',
  'http://i1.kym-cdn.com/photos/images/facebook/000/457/055/f4e.gif',
  'https://s-media-cache-ak0.pinimg.com/236x/a1/f2/7c/a1f27c3be4c0c49e089c5f51e6156a76.jpg',
  'http://medias.gifboom.com/medias/t_592f3cb541524198af68725ed23c1c55.jp://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZTtqwCVhdpTkueyRX3m5E_owDzB3ERQ1MaBZ4ohLlQrZpqZPceA',
  'http://cdn.cutestpaw.com/wp-content/uploads/2012/08/Snoopy-045.jpg',
  'http://www.pbh2.com/wordpress/wp-content/uploads/2012/05/cutest-cat-ever-snoopy-laying-back.jpg',
  'http://cdn.cutestpaw.com/wp-content/uploads/2012/08/Snoopy-037.jpg'
]

module.exports = (robot) ->
  robot.respond /snoopy me/i, (msg) ->
    msg.send msg.random snoopies

  robot.respond /snoppy bomb/i, (msg) ->
    randomSize = msg.random [2, 5, 8, 10]
    sortedSnoopies = snoopies.sort( -> 0.5 * Math.random() ).slice(1, randomSize)
    for snoopy in sortedSnoopies
      msg.send snoopy

