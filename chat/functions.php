<?php
include "db.php";

function insert_chat($to,$from,$ts,$message){
    $statement = $GLOBALS['db'] ->prepare('INSERT INTO "messages" ("from_user", "to_user", "time","message")
    VALUES (:from, :to, :time,:message)');
    $statement->bindValue(':from', $from);
    $statement->bindValue(':to', $to);
    $statement->bindValue(':time', $ts);
    $statement->bindValue(':message', "{$message}");
    $statement->execute();
}

function _chat($to,$from){
    $statement = $GLOBALS['db'] ->prepare('SELECT * FROM  "messages" where "from"=? AND "to"=? order by time DESC ');
    $statement->bindValue(1, $from);
    $statement->bindValue(2, $to);
    $result = $statement->execute();
}

