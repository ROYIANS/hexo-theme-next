'use strict';

function Book(args) {
  args = args.join(' ').split(',');
  var cover = args[0].trim();
  var name = args[1].trim();
  var author = args[2].trim() || '';
  var desp = args[3].trim() || '';
  var status = args[4].trim() || '想读';
  var link = args[5].trim() || '#';
  var star = args[6] || '5';
  var download = args[7] || cover;
  var result = '<div class="card u-clearfix"><div class="card-media"><div class="card-media-img" style="background:url('+cover+') no-repeat 0 0 / 100% 100%;"></div><div class="card-media-preview u-flex-center" onclick="view(this);" data-url="'+download+'" data-flag="false" data-img="'+cover+'"><i class="fa fa-download"></i></div><span class="card-media-tag card-media-tag-';
  if(status=='想读') {
    result+='cyan';
  } else if (status=='在读') {
    result+='brown';
  } else {
    result += 'black';
  }
  result = result + '">'+status+'</span></div><div class="card-body"><h2 class="card-body-heading" id="'+name+'" ><a href="'+link+'">'+name+'</a></h2><ul class="card-body-stars u-clearfix">';
  if(star == 0) {
    result += '<li><i class="fa fa-star-o"></i></li><li><i class="fa fa-star-o"></i></li><li><i class="fa fa-star-o"></i></li><li><i class="fa fa-star-o"></i></li><li><i class="fa fa-star-o"></i></li>';
  }
  if(star == 0.5) {
  result += '<li><i class="fa fa-star-half-o"></i></li><li><i class="fa fa-star-o"></i></li><li><i class="fa fa-star-o"></i></li><li><i class="fa fa-star-o"></i></li><li><i class="fa fa-star-o"></i></li>';
  }
  if(star == 1) {
  result += '<li><i class="fa fa-star"></i></li><li><i class="fa fa-star-o"></i></li><li><i class="fa fa-star-o"></i></li><li><i class="fa fa-star-o"></i></li><li><i class="fa fa-star-o"></i></li>';
  }
  if(star == 1.5) {
  result += '<li><i class="fa fa-star"></i></li><li><i class="fa fa-star-half-o"></i></li><li><i class="fa fa-star-o"></i></li><li><i class="fa fa-star-o"></i></li><li><i class="fa fa-star-o"></i></li>';
  }
  if(star == 2) {
  result += '<li><i class="fa fa-star"></i></li><li><i class="fa fa-star"></i></li><li><i class="fa fa-star-o"></i></li><li><i class="fa fa-star-o"></i></li><li><i class="fa fa-star-o"></i></li>';
  }
  if(star == 2.5) {
  result += '<li><i class="fa fa-star"></i></li><li><i class="fa fa-star"></i></li><li><i class="fa fa-star-half-o"></i></li><li><i class="fa fa-star-o"></i></li><li><i class="fa fa-star-o"></i></li>';
  }
  if(star == 3) {
  result += '<li><i class="fa fa-star"></i></li><li><i class="fa fa-star"></i></li><li><i class="fa fa-star"></i></li><li><i class="fa fa-star-o"></i></li><li><i class="fa fa-star-o"></i></li>';
  }
  if(star == 3.5) {
  result += '<li><i class="fa fa-star"></i></li><li><i class="fa fa-star"></i></li><li><i class="fa fa-star"></i></li><li><i class="fa fa-star-half-o"></i></li><li><i class="fa fa-star-o"></i></li>';
  }
  if(star == 4) {
  result += '<li><i class="fa fa-star"></i></li><li><i class="fa fa-star"></i></li><li><i class="fa fa-star"></i></li><li><i class="fa fa-star"></i></li><li><i class="fa fa-star-o"></i></li>';
  }
  if(star == 4.5) {
  result += '<li><i class="fa fa-star"></i></li><li><i class="fa fa-star"></i></li><li><i class="fa fa-star"></i></li><li><i class="fa fa-star"></i></li><li><i class="fa fa-star-half-o"></i></li>';
  }
  if(star == 5) {
  result += '<li><i class="fa fa-star"></i></li><li><i class="fa fa-star"></i></li><li><i class="fa fa-star"></i></li><li><i class="fa fa-star"></i></li><li><i class="fa fa-star"></i></li>';
  }

  result = result + '</ul><small class="card-author">'+author+'</small><br/><span class="card-desp">'+desp+'</span></div></div>';
  return result;
}

hexo.extend.tag.register('book', Book, {ends: false});
