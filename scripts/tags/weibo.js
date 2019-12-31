'use strict';

function weibo(args) {
  return `<script src="//tjs.sjs.sinajs.cn/open/api/js/wb.js" type="text/javascript" charset="utf-8"></script><wb:topic uid="2241179922" column="y" border="n" width="821" height="1190" tags="%E5%B0%8F%E6%A2%A6%E5%B2%9B%2CROYIANS" language="zh_cn" version="base" appkey="TfoVt" footbar="y" url="https%3A%2F%2Fwww.royians.cn%2Ftopic" filter="y" ></wb:topic>`;
}

hexo.extend.tag.register('weibo', weibo, {ends: false});
