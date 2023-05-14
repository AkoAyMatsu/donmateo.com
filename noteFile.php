<?php
require "NoteDataBase.php";
$db = new NoteDataBase();
if (isset($_POST['note_contents']) && isset($_POST['note_title']) && isset($_POST['note_date'])) {
    if ($db->dbConnect()) {
        if ($db->saveNotes("notepad", $_POST['note_contents'], $_POST['note_title'], $_POST['note_date'])) {
            echo "Notes saved!";
        } else echo "Saved to draft";
    } else echo "Error: Database connection";
}else{
    echo "All fields are required!";
}
?>
