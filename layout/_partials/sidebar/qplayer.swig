
<link href="/lib/Qplayer/style.css" rel="stylesheet">
<script src="/lib/Qplayer/script.js"></script>
		<script>
			(function (q) {
				/* 目前只支持网易云音乐的这几种类型
				 * type:
				 *     list - 歌单
				 *     dj   - 电台
				 */
				q.type = 'list'; // 类型
				q.id = 501873788; //类型所对应的id
				q.isAuto = false; //是否自动播放，默认false
				q.isRandom = true; //是否随机播放，默认true
				q.isRotate = true; //封面是否旋转，默认true
			})(QPlayer);
		</script>
<div id="QPlayer">
			<div class="body" hidden>
				<div class="player">
					<span class="cover">
						<img src="https://p4.music.126.net/7VJn16zrictuj5kdfW1qHA==/3264450024433083.jpg?param=106x106">
					</span>
					<div class="ctrl">
						<div class="title">
							<strong>name</strong><span> - </span><span class="artist">artist</span>
						</div>
						<div class="progress">
							<div class="already" style="width:0%;">
								<div class="Qbtn"></div>
							</div>
						</div>
						<div class="contr">
							<div class="timer left">00:00</div>
							<div class="center">
								<div class="last icon"></div>
								<div class="play icon"></div>
								<div class="next icon"></div>
							</div>
							<div class="right">
								<div class="list-btn icon"></div>
								<div class="lyric-btn icon"></div>
							</div>
						</div>
					</div>
				</div>
				<div class="pop-btn">
					<div class="icon"></div>
				</div>
			</div>
			<div class="more">
				<ol class="list"></ol>
			</div>
			<audio id="QQaudio"></audio>
		</div>

		<div id="Qlyric" style="visibility: hidden;"><ol></ol></div>
		<div id="QQmodel" class="QQmodel" style="visibility: hidden;"><h1>歌曲列表<span id="QQclose"><a rel="关闭"> X </a></span></h1><div id="QQlist"></div></div>