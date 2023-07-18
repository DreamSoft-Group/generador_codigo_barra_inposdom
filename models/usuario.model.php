<?php

require_once 'conexion.php';

class mdlUsuario
{
    public static function mdlMostrarUsuario($tabla, $campo, $valor)
    {
        $object = new conexion();
        $stmt = $object->connect()->prepare("SELECT * FROM $tabla WHERE $campo = ?");
        $stmt->bindParam(1, $valor, PDO::PARAM_STR);
        try {
            $stmt->execute();
            return $stmt->fetch();
        } catch (PDOException $e) {
            return $e->getMessage();
        }

    }
}