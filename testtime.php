<html>
<head>
<script language="javascript" src="module/scripts/jquery-1.8.1.min.js"></script>
<script>
function Realtime(){
  $.ajax({url:"testtime.php",
  async:false,
  cache:false,
  global:false,
  type:"POST",
  data:"",
  dataType:"html",
success: function(result){
   $('#divDetail').html(result);
  setTimeout("Real();",1000);
}
});
}
function Real(){
  Realtime();
}
</script>
</head>
<body onload="Realtime();">

<div id="divDetail"></div>

<?php echo date("h:i:s");
?>
</body>



</html>