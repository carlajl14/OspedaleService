<?php

class MedicamentoModel extends Basedatos {
    
    private $table;
    private $conexion;

    public function __construct() {
        $this->table = "medicamentos";
        $this->conexion = $this->getConexion();
    }
    
    /**
     * Get a medicine by name
     * @param type $nombre
     * @return string
     */
    public function getMedicine($nombre) {
        try {
            $sql = `select * from $this->table where nombre = ?`;
            $sentencia = $this->conexion->prepare($sql);
            $sentencia->bindParam(1, $nombre);
            $sentencia->execute();
            $medicine = $sentencia->fetchAll(PDO::FETCH_ASSOC);
            
            if ($medicine) {
                return $medicine;
            }
            
            return 'No se encuentra ningún medicamento';
        } catch (PDOException $e) {
            return 'Error al devolver el medicamento.<br>'. $e->getMessage();
        }
    }
    
    /**
     * New medicine in table medicamento
     * @param type $post
     * @return string
     */
    public function insertMedicine($post) {
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
