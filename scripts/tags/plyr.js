'use strict';

function plyrVideo(args, content) {
    if (args[0]==undefined) {
      args[0] = "player";
    }

    if (content==undefined) {
      content = " ";
    } else {
      content = " src='"+content+"' ";
    }
    return '<link rel="stylesheet" href="https://cdn.bootcss.com/plyr/3.5.6/plyr.css" /><script src="https://cdn.bootcss.com/plyr/3.5.6/plyr.js"></script><video poster="https://api.dujin.org/bing/1920.php" id="'+args[0]+'" playsinline controls><source id="video-'+args[0]+'" '+content+' type="video/mp4" /></video><script>const '+args[0]+' = new Plyr(\'#'+args[0]+'\');</script>';
}

function plyrAudio(args, content) {
  if (args[0]==undefined) {
    args[0] = "player";
  }
  return '<link rel="stylesheet" href="https://cdn.bootcss.com/plyr/3.5.6/plyr.css" /><script src="https://cdn.bootcss.com/plyr/3.5.6/plyr.js"></script><audio id="'+args[0]+'" controls><source src="'+content+'" type="audio/mp3" /></audio><script>const '+args[0]+' = new Plyr(\'#'+args[0]+'\');</script>';
}

function youtube(args, content) {
  if (args[0]==undefined) {
    args[0] = "player";
  }
  return '<link rel="stylesheet" href="https://cdn.bootcss.com/plyr/3.5.6/plyr.css" /><script src="https://cdn.bootcss.com/plyr/3.5.6/plyr.js"></script><div class="plyr__video-embed" id="'+args[0]+'"><iframe src="https://www.youtube.com/embed/'+content+'?origin=https://plyr.io&amp;iv_load_policy=3&amp;modestbranding=1&amp;playsinline=1&amp;showinfo=0&amp;rel=0&amp;enablejsapi=1" allowfullscreen allowtransparency allow="autoplay"></iframe></div><script>const '+args[0]+' = new Plyr(\'#'+args[0]+'\');</script>';
}

hexo.extend.tag.register('plyrAudio', plyrAudio, {ends: true});
hexo.extend.tag.register('plyrVideo', plyrVideo, {ends: true});
hexo.extend.tag.register('YouTube', youtube, {ends: true});