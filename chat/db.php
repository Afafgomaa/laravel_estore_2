<?php
// This file walks you through the most common features of PHP's SQLite3 API.
// The code is runnable in its entirety and results in an `analytics.sqlite` file.


// Create a new database, if the file doesn't exist and open it for reading/writing.
// The extension of the file is arbitrary.
$GLOBALS['db'] = new SQLite3('chat.db', SQLITE3_OPEN_CREATE | SQLITE3_OPEN_READWRITE);

// Create a table.
$GLOBALS['db'] ->query('CREATE TABLE IF NOT EXISTS "messages" (
    "id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    "from_user" INTEGER,
    "to_user" VARCHAR,
    "time" INTEGER,
     "message" TEXT                                 
)');

