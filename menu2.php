<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width initial-scale=1.0">
<meta charset="utf-8">
<script type="text/javascript">
function closeWin()
{
myWindow.close();
}
</script>
</head>
<body style="background-color:palegreen;">
<hr style="background-color:Red;height:3px;color=green;"> <br>
<form>
<button type="submit" formaction="medata.php" formtarget="dashb"> บันทึกข้อมูล ME </button> <br> <br>
<button disabled> บันทึกข้อมูลยา </button> <br> <br>
<button disabled> บันทึกข้อมูลเจ้าหน้าที่ </button> <br> <br>
<button disabled> บันทึกข้อมูลหน่วยงาน </button> <br> <br>
<button disabled> บันทึกข้อมูล  </button> <br> <br>
<button disabled>เรียกดูรายงาน </button> <br> <br>
</form>
<button onclick="self.close";> จบการทำงาน </button>  <br> <br>
<!--<script>
function closeWindow() { self.opener=this; self.close();  }
</script>
<input type='button' onClick="closeWindow()" value='Close Window'> -->
</body>

 </html>