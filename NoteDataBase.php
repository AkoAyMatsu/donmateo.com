<?php
require "NotesDatabaseConfig.php";

class NoteDataBase
{
    public $connect;
    public $data;
    private $sql;
    protected $servername;
    protected $username;
    protected $password;
    protected $databasename;

    public function __construct()
    {
        $this->connect = null;
        $this->data = null;
        $this->sql = null;
        $dbc = new NotesDatabaseConfig();
        $this->servername = $dbc->servername;
        $this->username = $dbc->username;
        $this->password = $dbc->password;
        $this->databasename = $dbc->databasename;
    }

    function dbConnect()
    {
        $this->connect = mysqli_connect($this->servername, $this->username, $this->password, $this->databasename);
        return $this->connect;
    }
    function prepareData($data)
    {
        return mysqli_real_escape_string($this->connect, stripslashes(htmlspecialchars($data)));
    }

    function saveNotes($table, $note_contents, $note_title, $note_date)
    {
        $note_contents = $this->prepareData($note_contents);
        $note_title = $this->prepareData($note_title);
        $note_date = $this->prepareData($note_date);
        //$password = password_hash($password, PASSWORD_DEFAULT);
        $this->sql = "INSERT INTO " . $table . " (note_contents, note_title, note_date) VALUES ('" . $note_contents . "', '" .$note_title. "', '" .$note_date. "')";
        if (mysqli_query($this->connect, $this->sql)) {
            return true;
        } else return false;
        
    }
    function retrieveData($table){
        $this->connect = $this->dbConnect(); // Establish a connection to the database
    
        // Execute a query to retrieve data
        $this->sql = "SELECT * FROM" .$table; // Replace 'your_table_name' with the name of your table
        $result = mysqli_query($this->connect, $this->sql);
    
        if (!$result) {
            // Handle the error if the query fails
            echo "Error: " . mysqli_error($this->connect);
            exit();
        }
    
        $data = array(); // Create an empty array to store the retrieved data
    
        // Loop through each row of the result set and store the data in the $data array
        while ($row = mysqli_fetch_assoc($result)) {
            $data[] = $row;
        }
    
        mysqli_close($this->connect); // Close the database connection
        
        return $data; // Return the retrieved data
    }
}