<?php

header("Content-type: image/jpeg");

$string="sdsfc world";

//通过图片的路径创建一个新的图像
$im=imagecreatefrompng("1.png");

//为图像分配颜色
$orange=imagecolorallocate($im,220,210,60);

//imagesx()取得图像的宽度
$px=(imagesx($im)-7.5*strlen($string))/1.1;

$py=imagesy($im)-20;


//水平地画一行字符串
imagestring($im,3,$px,$py,$string,$orange);

//imagepng($im);
imagejpeg($im,'ss3.jpg');


