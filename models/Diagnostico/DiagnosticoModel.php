<?php

class DiagnosticoModel extends Basedatos {
    
    private $table;
    private $conexion;

    public function __construct() {
        $this->table = "diagnosticos";
        $this->conexion = $this->getConexion();
    }
    
    /**
     * Create diagnosis
     * @param type $descripcion
     */
    public function insertDiagnosis($post) {
        try{
            $sql = 'insert into diagnosticos (descripcion) values (?)';
            $sentencia = $this->conexion->prepare($sql);
            $sentencia->bindParam(1, $post['descripcion']);
            $insert = $sentencia->execute();
            
            $mensaje = "";
            $mensaje = "Se ha insertardo correctamente";
            return $mensaje;
        } catch (PDOException $e) {
            return 'Error el insertar.<br>'. $e->getMessage();
        }
    }
    
    /**
     * Get all diagnosis
     * @return string
     */
    public function getDiagnosis() {
        try {
            $sql = 'select * from diagnosticos';
            $sentencia = $this->conexion->prepare($sql);
            $sentencia->execute();
            $diagnosis = $sentencia->fetchAll(PDO::FETCH_ASSOC);
            
            if ($diagnosis) {
                return $diagnosis;
            }
            return 'Error al devolver los diagnosticos';
        } catch (PDOException $e) {
            return 'Error al devolver los diagnosticos.<br>' . $e->getMessage();
        }
    }
    
    /**
     * Get one diagnosis
     * @param type $descripcion
     * @return string
     */
    public function getOneDiagnosis($descripcion) {
        try {
            $sql = 'select * from diagnosticos where descripcion = ?';
            $sentencia = $this->conexion->prepare($sql);
            $sentencia->bindParam(1, $descripcion);
            $sentencia->execute();
            $diagnosis = $sentencia->fetch(PDO::FETCH_ASSOC);
            
            if ($diagnosis) {
                return $diagnosis;
            }
            return 'Error al devolver el diagnostico';
        } catch (PDOException $e) {
            return 'Error al devolver el diagnostico.<br>' . $e->getMessage();
        }
    }
}

