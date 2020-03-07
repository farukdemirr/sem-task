<?php

try {
    $db = new PDO('mysql:host=127.0.0.1;port=33063;dbname=sem-task;charset=utf8', 'root', 'secret');
} catch (Exception $exception) {
    die($exception->getMessage());
}



