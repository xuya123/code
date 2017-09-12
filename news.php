<?php 
	//<!-- 头部 -->
	require 'news_header.html';
	
	//<!-- 导航 -->
	require 'news_nav.html';

	//<!-- banner -->	
	require 'news_banner.html';
	require 'news_mysql.php';
?>	

	<!-- 中部开始 -->
		<?php require 'news_type.html'; ?>
		
		<?php require 'news_content.html'; ?>
		<div class="page">
			<ol class="clearfix">
				<li><a class="prev" href="#">上一页</a></li>
				<li><a class="on" href="#">1</a></li>
				<li><a href="#">2</a></li>
				<li><a href="#">3</a></li>
				<li><a class="next" href="#">下一页</a></li>
			</ol>
		</div>
	</div>
	<!-- 中部结束 -->


	<!-- 底部 -->
	<?php 
		require 'news_footer.html';
	?>
	
</body>
</html>