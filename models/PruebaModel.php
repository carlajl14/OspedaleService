<?php

class PruebaModel extends Basedatos {
    
    private $table;
    private $conexion;

    public function __construct() {
        $this->table = "pruebas";
        $this->conexion = $this->getConexion();
    }
    
    /**
     * Get a medical test by name
     * @param type $nombre
     * @return string
     */
    public function getMedicalTest($nombre) {
        try {
            $sql = `select * from $this->table where nombre = ?`;
            $sentencia = $this->conexion->prepare($sql);
            $sentencia->bindParam(1, $nombre);
            $sentencia->execute();
            $medicaltest = $sentencia->fetchAll(PDO::FETCH_ASSOC);
            
            if ($medicaltest) {
                return $medicaltest;
            }
            
            return 'No se encuentra ninguna prueba';
        } catch (PDOException $e) {
            return 'Error al devolver la prueba.<br>'. $e->getMessage();
        }
    }
    
    /**
     * New medical test in table pruebas
     * @param type $post
     * @return string
     */
    public function insertMedicalTest($post) {
        try{
            $sql = `insert into $this->table ('nombre') values (?)`;
            $sentencia = $this->conexion->prepare($sql);
            $sentencia->bindParam(1, $post['nombre']);
            $insert = $sentencia->execute();
            
            $mensaje = "";
            $mensaje = "Se ha insertardo correctamente";
            return $mensaje;
        } catch (PDOException $e) {
            return 'Error el insertar.<br>'. $e->getMessage();
        }
    }
}
