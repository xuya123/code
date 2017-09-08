<?php
session_start();
header("Content-type: image/png");
$x_size=200;
$y_size=60;

//创建一个画布
$im = @imagecreate($x_size, $y_size);
 
//给画布创建一个背景色 
$background_color = imagecolorallocate($im, 255, 255, 255);

//给文本创建一个背景色
$text_color = imagecolorallocate($im, 233, 14, 91);

$string='abcdefghijklmnopqrstuvwxyz1234567890';
$length=strlen($string)-1;

$w=30;
$code='';
for($i=1;$i<5;$i++)
{
	$count=rand(0,$length);
	$code_rand=substr($string,$count,1);
	$code .=$code_rand;
	$w1=$w*$i;
	//图像写入文本
	$font = 'arial.ttf';
	imagettftext($im,36,0,$w1,50,$text_color,$font,$code_rand);
}
$_SESSION['code']=$code;


$line=6;
for($i=1;$i<=$line;$i++)
{
	$x1=rand(0,100);
	$y1=rand(0,60);
	$x2=rand(100,200);
	$y2=rand(0,60);
	$linecolor=imagecolorallocate($im,rand(0,255),rand(0,255),rand(0,255));
	
	//画一条线
	imageline($im,$x1,$y1,$x2,$y2,$linecolor);
}

$point=100;
for($i=0;$i<$point;$i++)
{
	$x=rand(0,200);
	$y=rand(0,60);	
	$pointcolor=imagecolorallocate($im,rand(0,255),rand(0,255),rand(0,255));
	//画点
	imagesetpixel($im,$x,$y,$pointcolor);
}


imagepng($im);
imagedestroy($im);
?>