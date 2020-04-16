<?php
include "db.php";
$seller_name = "Eslam Zidan";
$user_name = "Aly Mohammed";


$for=$_GET['type'];
if($for=='seller'){$var=$seller_name;}else{$var=$user_name;}

$statement = $GLOBALS['db']->prepare('SELECT * FROM  "messages" where "from_user"=? or "to_user"=?');
$statement->bindValue(1, "{$var}");
$statement->bindValue(2, "{$var}");
$result = $statement->execute();
while ($res = $result->fetchArray(SQLITE3_ASSOC)) {
    $formatted_ts = date('H:i:s', $res['time']);
    $from = $res['from_user'];
    $message = $res['message'];
    "<h3>{$formatted_ts} - {$from} : {$message}<h3><br>";
    $all_messages .= "<h3>{$formatted_ts} - {$from} : {$message}<h3><br>";;
}
echo $all_messages;
