<?php
include "db.php";
$seller_name="Eslam Zidan";
$user_name="Aly Mohammed";

$statement = $GLOBALS['db'] ->prepare('SELECT * FROM  "messages" where "from_user"=? or "to_user"=?');
$statement->bindValue(1, "{$seller_name}");
$statement->bindValue(2, "{$seller_name}");
$result = $statement->execute();
while ($res=$result->fetchArray(SQLITE3_ASSOC)){
    $formatted_ts=date('H:i:s',$res['time']);
    $from=$res['from_user'];
    $message=$res['message'];
    "<h3>{$formatted_ts} - {$from} : {$message}<h3><br>";
    $all_messages.="<h3>{$formatted_ts} - {$from} : {$message}<h3><br>";;
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Chat Box!</title>

    <meta name="description" content="Source code generated using layoutit.com">
    <meta name="author" content="LayoutIt!">

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">

</head>
<body>

<div class="container-fluid">
    <div class="row">
        <div class="col-md-4"></div>
        <div class="col-md-4"><h2>Chat Box</h2></div>
        <div class="col-md-4"></div>

    </div>
    <hr>
    <div class="row">
        <div class="col-md-12" id="chat_box">
            <?php echo $all_messages;?>
        </div>
    </div>
    <hr>
    <div class="row">
        <div class="col-md-8">
            <form role="form">
                <div class="form-group">
                    <label for="exampleFormControlTextarea1">Message</label>
                    <textarea class="form-control" id="message_box" rows="3"></textarea>
                </div>

            </form>
        </div>
        <div class="col-md-4">
            <br>
            <br>
            <button type="button" class="btn btn-primary btn-lg btn-block" onclick="send_message();">
                Send
            </button>
        </div>
    </div>
</div>

<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/scripts.js"></script>
<script>
    function send_message() {
        var from="<?php echo $seller_name;?>";
        var to="<?php echo $user_name;?>";
        var message_text=document.getElementById('message_box').value;
        var message =message_text.trim();
        if(message.length==0){
            alert("Message cannot be empty");
            exit;
        }

        if (window.XMLHttpRequest) {
            // code for IE7+, Firefox, Chrome, Opera, Safari
            xmlhttp = new XMLHttpRequest();
        } else {
            // code for IE6, IE5
            xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
        }
        xmlhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
                document.getElementById("chat_box").innerHTML = this.responseText;
            }
        };
        xmlhttp.open("GET","api.php?from="+from+"&to="+to+"&message="+message,true);
        xmlhttp.send();
    }


    setInterval(function(){
        if (window.XMLHttpRequest) {
            // code for IE7+, Firefox, Chrome, Opera, Safari
            xmlhttp = new XMLHttpRequest();
        } else {
            // code for IE6, IE5
            xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
        }
        xmlhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
                document.getElementById("chat_box").innerHTML = this.responseText;
            }
        };
        xmlhttp.open("GET","get_messages.php?type=seller",true);
        xmlhttp.send();
    }, 5000);
</script>
</body>
</html>