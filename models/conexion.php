<?php

class conexion
{

    private $host = 'localhost';
    private $data = 'generador';
    private $user = 'root';
    private $pass = '';
    private $chrs = 'utf8mb4';
    private $conn;

    function __construct()
    {
        try {
            $this->conn = new PDO("mysql:host=" . $this->host . ";dbname=" . $this->data . ";charset=" . $this->chrs, $this->user, $this->pass);
            $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            $this->connect($this->conn);
        } catch (PDOException $e) {
            echo "Error: " . $e->getMessage();
        }
    }

    public function connect()
    {
        return $this->conn;
    }
}
