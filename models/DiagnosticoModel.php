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
    public function insertDiagnosis($descripcion) {
        try{
            $sql = `insert into $this->table ('descripcion') values (?)`;
            $sentencia = $this->conexion->prepare($sql);
            $sentencia->bindParam(1, $descripcion);
            $insert = $sentencia->execute();
            
            $mensaje = "";
            $mensaje = "Se ha insertardo correctamente";
            return $mensaje;
        } catch (PDOException $e) {
            return 'Error el insertar.<br>'. $e->getMessage();
        }
    }
}

