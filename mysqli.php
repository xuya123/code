<?php

$link='';
function conn($db_config){
	$link=mysqli_connect($db_config['host'],$db_config['username'],$db_config['password'],$db_config['dbname']);
	mysqli_query($link,'set names utf8');
	return $link;
}

function query($link,$sql){
	return mysqli_query($link,$sql);
}

function fetch_assoc($result){
	$arr_return=array();
	while($row=mysqli_fetch_assoc($result))
	{
		$arr_return[]=$row;
	}
	return $arr_return;
}

function fetch_one($result){
	return mysqli_fetch_assoc($result);
}