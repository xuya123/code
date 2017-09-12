<?php
	
	require '../confing.php';
	require '../mysqli.php';

	
	//获取新闻类型
	$sql="select * from new_types";
	
	$link=conn($confing);
	// print_r($link);
	$result=query($link,$sql);
	//print_r($result);
	$new_types=fetch_assoc($result);
	//var_dump($new_types);
	
	//获取新闻
	$sql="select * from news";
	
	$link=conn($confing);
	$result=query($link,$sql);
	
	$news=fetch_assoc($result);