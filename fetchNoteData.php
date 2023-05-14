<?php


define('DB_HOST', 'localhost');
define('DB_USER', 'root');
define('DB_PASS', "");
define('DB_NAME', 'notes');


$conn = new mysqli(DB_HOST, DB_USER, DB_PASS, DB_NAME);
if (mysqli_connect_errno()){
    die("Unable to connect to the database!".mysqli_connect_error());
}

$stmt = $conn->prepare("SELECT note_title, note_contents, note_date FROM notepad");
$stmt->execute();

$stmt->bind_result($note_title, $note_contents, $note_date);

$result = array();

while ($stmt->fetch()){
    $temp = array();
    $temp['note_title'] = $note_title;
    $temp['note_contents'] = $note_contents;
    $temp['note_date'] = $note_date;


    array_push($result, $temp);
}

echo json_encode($result);




?>