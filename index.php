<!doctype html>
<?php
	include("./fetch/login.php");
?>
<!doctype html>
<html>

<head>
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300|Montserrat:400,700|Roboto:500,400' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" type="text/css" href="./style/page.css">
	<link rel="stylesheet" type="text/css" href="./style/jigsaw.css">
	<link rel="stylesheet" type="text/css" href="./style/question.css">
	<link rel="stylesheet" type="text/css" href="./style/story.css">
	<script type="text/javascript" src="./scripts/page.js"></script>
	<script type="text/javascript" src="./scripts/jigsaw.js"></script>
</head>

<body>

<div id="cover-content">
	<table class="cover-content-wrapper">
		<tr><td style="margin-bottom:5px;"><h1 class="title">Cross World</h1></td></tr>
		<tr><td><a onclick="login()" class="register" style="margin-right:5px;">Login</a><a href="#" class="register" style="margin-left:5px;">Register</a></td></tr>
	</table>
</div>
<div id="loading-div" class=""><div></div></div>
<div id="page-content">
	<div id="stats" class="info-overlay">
		<svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="30px" height="30px" viewBox="0 0 512 512" enable-background="new 0 0 512 512" xml:space="preserve">
			<path d="M148.527,360.5H81.334v-139h67.193V360.5z M242.527,360.5h-67.193V79.167h67.193V360.5z M336.527,360.5h-67.193V164.667h67.193V360.5z M430.527,360.5h-67.193v-70.578h67.193V360.5z M462,387.834H50v45h412V387.834z"/>
		</svg>
	</div>
	<div id="user">kj</div>
	<div id="image-content">
		
		<?php
			echoMapData();
		?>
		<svg id="path-container" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" viewBox="0 0 1100 530" width="1100px" height="530px" style="enable-background:new 0 0 1100 530;" xml:space="preserve"></svg>
	</div>
</div>
<div id="level-content">

</div>

<div id="overlay">
	<table>
		<tr>
			<td style="height:100%;"></td>
		</tr>
		<tr>
			<td style="height:8px;">
				<svg width="12px" height="8px">
					<polygon points="0,8 6,0 12,8"/>
				</svg>
			</td>
		</tr>
		<tr>
			<td style="padding:8px; background:rgba(0,0,0,0.7);">
				<span id="overlay-data">Current: 16<br/>Question: 24</span>
			</td>
		</tr>
		<tr>
			<td style="height:8px;">
				<svg width="12px" height="8px">
					<polygon points="0,0 6,8 12,0"/>
				</svg>
			</td>
		</tr>
		<tr>
			<td style="height:100%;"></td>
		</tr>
	</table>
</div>
</body>

<script type="text/javascript">

	var info = {
		current: <?php echo $current ?>,
		ahead: <?php echo $ahead ?>,
		loggedIn: <?php echo ($loggedIn?"true":"false") ?>,
		user: <?php echo "\"$user\"" ?>,
		level: <?php echo $level ?>,
		question: <?php echo $question ?>
	}

	initLogin();

</script>

</html><?php 
	$conn->close();
?>