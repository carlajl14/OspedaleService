<?php

class MedicoLoginModel extends Basedatos {
    
    private $table;
    private $conexion;

    public function __construct() {
        $this->table = "medicos";
        $this->conexion = $this->getConexion();
    }
    
    /**
     * Get one doctor
     * @param type $email
     * @param type $password
     * @return string
     */
    public function getMedico($email, $password) {
        try {
            $sql = `select * from $this->table where email = ? and password = sha2(?, 256)`;
            $sentencia = $this->conexion->prepare($sql);
            $sentencia->bindParam(1, $email);
            $sentencia->bindParam(2, $password);
            $sentencia->execute();
            $medico = $sentencia->fetchAll(PDO::FETCH_ASSOC);
            
            if ($medico) {
                return $medico;
            }
            
            return 'Usuario o contraseña incorrectos';
        } catch (PDOException $e) {
            return 'Error al devolver los datos.<br>' . $e->getMessage();
        }
    }
}

