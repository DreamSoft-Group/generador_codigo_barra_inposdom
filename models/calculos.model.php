<?php

require_once 'conexion.php';

class mdlCalculos
{
    public static function mdlShowLastRegister($codI)
    {
        $object = new conexion();
        $stmt = $object->connect()->prepare("SELECT registros.*, tcod.name AS 'nombre'  FROM registros INNER JOIN tipoCodigos as tcod ON registros.codI = tcod.Id  WHERE codI = ? ORDER BY secuencial DESC LIMIT 1");
        $stmt->bindParam(1, $codI, PDO::PARAM_INT);

        try {

            $stmt->execute();
            return $stmt->fetch();

        } catch (PDOException $e) {

            return $e->getMessage();
        }
        
    }

    public static function mdlCreateRegister($data)
{
    $object = new conexion();

    $stmt = $object->connect()->prepare("INSERT INTO registros values(NULL, ?, ?, ?, ?, ?, current_timestamp())");

    $stmt->bindParam(1, $data['codI']);
    $stmt->bindParam(2, $data['secuencial']);
    $stmt->bindParam(3, $data['check']);
    $stmt->bindParam(4, $data['country']);
    $stmt->bindParam(5, $data['destino']);

    try {
        $stmt->execute();
        return true;
    } catch (PDOException $e) {
        // Verificar si se produjo una violación de la restricción UNIQUE
        if ($e->getCode() === '23000' && strpos($e->getMessage(), 'Duplicate entry') !== false) {
            return 'duplicidad'; // Manejar el caso de registro duplicado
        } else {
            return $e->getMessage(); // Manejar otros errores de la base de datos
        }
    }
}


}