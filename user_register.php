<?php
$userName=$_POST['userName'];
$phone=$_POST['phone'];
$verifyCode=$_POST['verifyCode'];
$password=$_POST['password'];
//$isAgree=$_POST['isAgree'];
session_start();

//连接数据库
$connect=mysqli_connect("localhost","root","","dodi");

if($userName==""||$phone==""||$verifyCode==""||$password=="")
{
	echo "请完善用户信息！！！";
}
else
{
	if((strlen($userName)>14))
	{
		echo "用户名不能超过7个汉字或14个字符";
	}
	if($password<8)
	{
		echo "密码长度大于等于 8 个字符";
	}
	if($verifyCode!=$_SESSION['code'])
	{
		echo "验证码输入不正确";
	}
	$password=MD5($password);
	$sql="insert into user(userName,phone,password)values('$userName','$phone','$password')";
				
	$result=mysqli_query($connect,$sql);
	if($result)
	{
		echo "注册成功";
	}
	else
	{
		echo "注册失败";
						
	}
}