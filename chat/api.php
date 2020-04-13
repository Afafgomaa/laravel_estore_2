<?php
include "functions.php";
$from=$_GET['from'];
$to=$_GET['to'];
$message=$_GET['message'];
$timestamp=time();
$formatted_ts=date('H:i:s',$timestamp);

insert_chat($to,$from,$timestamp,$message);
$text='';

$statement = $GLOBALS['db'] ->prepare('SELECT * FROM  "messages" where "from_user"=? or "to_user"=?');
$statement->bindValue(1, "{$from}");
$statement->bindValue(2, "{$from}");
$result = $statement->execute();
while ($res=$result->fetchArray(SQLITE3_ASSOC)){
    $formatted_ts=date('H:i:s',$res['time']);
    $from=$res['from_user'];
    $message=$res['message'];
    "<h3>{$formatted_ts} - {$from} : {$message}<h3><br>";
    $text.="<h3>{$formatted_ts} - {$from} : {$message}<h3><br>";;
}

//$result="<h3>{$formatted_ts} - {$from} : {$message}";
echo $text;