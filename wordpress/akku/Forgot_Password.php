<html>
<head>
<title> Forgot Password </title>
	<link rel="icon" href="images/pass1.png" />
	<style>	
    body{
        background: url("images/back.jpg");
    }
		#next
		{
			font-size:18px;
			height:35;
			width:80;
			padding:2;
			background-color:#088cd4; color:#FFFFFF;
			border-top:#29447E;
			border-right-color:#29447E;
			border-bottom-color:#1A356E;
			border-left-color:#29447E;
			font-size:15px;
			font-weight:bold;
			box-shadow:5px 0px 10px 1px rgb(0,0,0);
		}
        
		#singup_button
		{
			background:#088cd4;
			color:#FFFFFF;
			border-top-color:#3B6E22;
			border-right-color:#2C5115;
			border-left-color:#3B6E22;
			font-size:25px;
			height:80;
			width:130;
			font-weight:bold;
			box-shadow:-5px 0px 10px 1px rgb(0,0,0);
		}

	</style>
</head>
<body>
<img src="images/12.png" height="40%" width="25%"/>
<div style="position:absolute;left:35%;top:25%; height:10%; width:7%; z-index:-1; background:#088cd4; box-shadow:0px 0px 10px 1px rgb(0,0,0);">   </div>
<div style="position:absolute;left:45%;top:25%; height:10%; width:7%; z-index:-1; background:#999999; box-shadow:0px 0px 10px 1px rgb(0,0,0);">   </div>
<div style="position:absolute;left:55%;top:25%; height:10%; width:7%; z-index:-1; background:#999999; box-shadow:0px 0px 10px 1px rgb(0,0,0);">   </div>

<div style="position:absolute; left:36%; top:25%;color:white;"> <h2> Step 1 </h2> </div>
<div style="position:absolute; left:46%; top:25%;color:white;"> <h2> Step 2 </h2> </div>
<div style="position:absolute; left:56%; top:25%;color:white;"> <h2> Step 3 </h2> </div>

<div style="position:absolute;left:26%; top:30.8%; height:1; width:46.85%; background-color:#CCCCCC; z-index:-2 "> </div>
<div style="position:absolute;left:26%; top:30.8%; height:44.3%; width:0.08%; background-color:#CCCCCC; "> </div>
<div style="position:absolute;left:26%; top:75%; height:1; width:46.85%; background-color:#CCCCCC; "> </div>
<div style="position:absolute;left:72.75%; top:30.8%; height:44.3%; width:0.10%; background-color:#CCCCCC; "> </div>

<form action="Forgot_Password2.php"  method="post">
	<div style="position:absolute; left:32%; top:46%; color:white; font-size:16px"> <h4> Enter Your Email Id: </h4> </div>
	<div style="position:absolute; left:43%; top:44.5%;"> <h4> <input type="text" name="Email" style="height:35; width:300; font-size:18px;"> </h4> </div>
	<div style="position:absolute; left:45%; top:60%;">  <input type="submit" name="Next" value="Next" id="next"> </div>
</form>

<div style="position:absolute;right:13.6%; top:14.8%;"> <a href="index.php" style="text-decoration:none;"> <input type="button" value="Sign Up" id="singup_button">    </a> </div>

</body>
</html>