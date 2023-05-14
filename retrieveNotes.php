<?php
require "NoteDataBase.php";

$note_db = new NoteDataBase();


if ($db->dbConnect()) {
    $data = $note_db->retrieveData($table);
}
?>