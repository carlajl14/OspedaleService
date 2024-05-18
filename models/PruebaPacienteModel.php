<?php

class PruebaPacienteModel extends Basedatos {
    
    private $table;
    private $conexion;

    public function __construct() {
        $this->table = "medico_prueba_paciente";
        $this->conexion = $this->getConexion();
    }
    
    /**
     * Medical test for patient
     * @param type $post
     * @return string
     */
    public function insertMedicalTest($post) {
        try {
            $sql = `insert into $this->table ('fecha', 'medico_id', 'paciente_id', 'prueba_id') values (?, ?, ?, ?)`;
            $sentencia = $this->conexion->prepare($sql);
            $sentencia->bindParam(1, $post['fecha']);
            $sentencia->bindParam(2, $post['medico_id']);
            $sentencia->bindParam(3, $post['paciente_id']);
            $sentencia->bindParam(4, $post['prueba_id']);
            $insert = $sentencia->execute();
            
            return 'Prueba creado';
        } catch (PDOException $e) {
            return "ERROR AL INSERTAR.<br>" . $e->getMessage();
        }
    }
}
