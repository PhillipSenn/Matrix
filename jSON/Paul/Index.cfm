<html>
<head>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js" type="text/javascript"></script>
<script type="text/javascript">
      $(document).ready(function(){
        $('#save').click(function(){
          $.ajax({
            url: 'add.cfc?method=addData&returnFormat=json',
            type: "post",
            data: { dataArray: [$('#test1').val(),$('#test2').val(),$('#test3').val() ] },
            dataType: 'json',
            success: function(data){
              $('#result').html(data);
            }
          });
        });
      });
    </script>
</head>
<body>
<form name="sub" method="post">
	Test1:
	<input type="text" name="test1" id="test1" />
	<br />
	Test2:
	<input type="text" name="test2" id="test2" />
	<br />
	Test3:
	<input type="text" name="test3" id="test3" />
	<br />
	<button type="button" id="save" name="save">Save</button>
</form>
<div id="result" />
</body>
</html>
