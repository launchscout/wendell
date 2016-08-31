# Description:
#   Lots of righteous adventures!!
#
# Dependencies:
#   None
#
# Commands:
#   adventure me - get a adventure
#   adventure bomb - get many adventure
#
# Author:
#   heflinao

adventures = [
  'http://i.imgur.com/eaF2r1U.gif',
  'http://media.giphy.com/media/j2rCxv6luaLq8/giphy.gif',
  'http://media.giphy.com/media/3f6yGRBkD6skU/giphy.gif',
  'http://fc08.deviantart.net/fs70/f/2014/067/e/3/catbug_nod_gif_by_nickyparsonavenger-d75i157.gif',
  'http://24.media.tumblr.com/0172030308d6960cbb742fc8943d14cb/tumblr_mjsmgnXLv21qhszhwo1_500.gif',
  'http://i.imgur.com/L9wqAyP.gif',
  'http://2.bp.blogspot.com/-F-AkxSioLKg/UdJt7s87cqI/AAAAAAAAQb0/2ro0hpJ73hc/s500/atg7.gif',
  'http://i.imgur.com/ZHZmWan.gif',
  'http://media1.giphy.com/media/X7X9dkC0kZQ9G/giphy.gif',
  'http://67.media.tumblr.com/tumblr_lwb8xelvCt1qd090do1_500.gif',
  'http://27.media.tumblr.com/tumblr_m2r3deR1Hd1qg8t4ro1_500.gif',
  'https://media.giphy.com/media/A441EggWUa7cc/giphy.gif',
  'https://tribzap2it.files.wordpress.com/2014/01/adventuretime-dance.gif?w=392&h=214',
  'http://66.media.tumblr.com/ed03a0ae5447a3c25b290dbed679ba83/tumblr_nqzho285C61s266z3o1_500.gif',
  'http://umalojadecaneca.com.br/wp-content/uploads/2015/11/hora-da-aventura-loucura.gif',
  'https://66.media.tumblr.com/d487b88a796738d986094ea79a655fde/tumblr_np6agoYN7k1qba9rro1_500.gif',
  'https://media.giphy.com/media/daUOBsa1OztxC/giphy.gif',
  'https://media.giphy.com/media/tH2oOpjPuN6I8/giphy.gif',
  'http://i197.photobucket.com/albums/aa297/chrisprocter01/1320695_o.gif',
  'http://cdn.smosh.com/sites/default/files/ftpuploads/bloguploads/1213/creepy-at-ridingdolphin.gif',
  'https://67.media.tumblr.com/849daef7a04cce8ccffd037a19ce1b21/tumblr_inline_ob7j5oxzzZ1ro4b45_500.gif',
  'https://img.buzzfeed.com/buzzfeed-static/static/2015-12/1/16/enhanced/webdr08/anigif_enhanced-buzz-18329-1449006465-5.gif',
  'https://67.media.tumblr.com/tumblr_lnddw96pvr1ql201ao1_500.gif'
]

module.exports = (robot) ->
  robot.respond /adventure me/i, (msg) ->
    msg.send msg.random adventures

  robot.respond /adventure bomb/i, (msg) ->
    randomSize = msg.random [2, 5, 8, 10, 15]
    sortedAdventures = adventures.sort( -> 0.5 * Math.random() ).slice(1, randomSize)
    for adventure in sortedAdventures
      msg.send adventure
