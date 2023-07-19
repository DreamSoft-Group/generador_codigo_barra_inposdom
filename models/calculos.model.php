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

        $stmt = $object->connect()->prepare("INSERT INTO registros values(NULL, ?, ?, ?, ?, ?, ?, current_timestamp())");

        $stmt->bindParam(1, $data['codI']);
        $stmt->bindParam(2, $data['secuencial']);
        $stmt->bindParam(3, $data['check']);
        $stmt->bindParam(4, $data['country']);
        $stmt->bindParam(5, $data['destino']);
        $stmt->bindParam(6, $data['cantidad']);

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

    public static function mdlMostrarInforme($tabla, $datos)
    {
        $object = new conexion();

        $stmt = $object->connect()->prepare("SELECT MIN(secuencial) AS `Desde`, MAX(secuencial) AS `Hasta`, SUM(cantidad) AS `cantidad`, SUM(cantidad*3) AS `CantidadTotal`, destino, create_date, codI, tcod.name AS `codigo` FROM registros INNER JOIN tipoCodigos AS tcod ON registros.codI = tcod.id WHERE codI = ? AND DATE(create_date) = ?");
        

        $stmt->bindParam(1, $datos['codigo'], PDO::PARAM_INT);
        $stmt->bindParam(2, $datos['fecha'], PDO::PARAM_STR);

        try
        {
            $stmt->execute();
            return $stmt->fetchAll(PDO::FETCH_ASSOC);
        } catch (PDOException $e) {
            // Agrega información detallada del error para depurar
            return array('error' => true, 'message' => $e->getMessage());
        }
    }

}