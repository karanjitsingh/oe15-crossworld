<!doctype html>

<html>
<head>
<style type="text/css">
	body,html {
		height:100%;
		width:100%;
		overflow: hidden;
	}
	body {
		margin: 0px;
		padding: 0px;
	}
</style>
<script type="text/javascript" src="./scripts/jigsaw.js"></script>
<link rel="stylesheet" type="text/css" href="./style/jigsaw.css" />
</head>
<body>
<div id="jigsaw">
	<table style="width:1000px; position:absolute; height:602px; top:50%; margin-top:-301px; left:50%; margin-left:-500px;">
		<tr>
			<td rowspan="2" style="width:800px; height:602px; vertical-align:top;">
				<div id="jigsaw-container">
					<?php
						$dir="jigsaws/puzzle1/";

						chdir("jigsaws/puzzle1");
						$file = fopen("answer.json", "r");
						$json = json_decode(fread($file, filesize("answer.json")));

						for($x=1;$x<=5;$x++)
						for($y=1;$y<=4;$y++)
						{
							if($json->pieces->{"$x$y"}->file == "5S6Ju.png")
							{
								echo ($json->pieces->{"$x$y"}->rotation / 90)%2;
							}
							$size=getimagesize($json->pieces->{"$x$y"}->file);
							if(($json->pieces->{"$x$y"}->rotation / 90)%2 == 2) {
								$temp = $size[0];
								$size[0] = $size[1];
								$size[1] = $temp;
							}
							echo "<div class=\"piece\" rot=\"".$json->pieces->{"$x$y"}->rotation."\" style=\"background:url($dir".$json->pieces->{"$x$y"}->file.");width:$size[0]px;height:$size[1]px;left:10px;top:10px;\"\></div>";
							
						}
						fclose($file);
						
					?>
				</div>
			</td>
			<td style="text-align:right; vertical-align:top;">
				Level x<br/>Question x<br/>
			</td>

		</tr>
		<tr>
			<td style="text-align:right; vertical-align:bottom;"><input type="submit" value="submit" onclick="submitJigsaw()"/></td>
		</tr>
	</table>
</div>
</body>
<script>

jigsaw.init();
</script>
</html>