<?php

class PacienteLoginModel extends Basedatos {
    
    private $table;
    private $conexion;

    public function __construct() {
        $this->table = "pacientes";
        $this->conexion = $this->getConexion();
    }
    
    /**
     * Get one patient
     * @param type $email
     * @param type $password
     * @return string
     */
    public function getPaciente($email, $password) {
        try {
            $sql = `select * from $this->table where email = ? and password = sha2(?, 256)`;
            $sentencia = $this->conexion->prepare($sql);
            $sentencia->bindParam(1, $email);
            $sentencia->bindParam(2, $password);
            $sentencia->execute();
            $paciente = $sentencia->fetchAll(PDO::FETCH_ASSOC);
            
            if ($paciente) {
                foreach ($paciente as $patient) {
                    $_SESSION['user'] = $patient['nombre'];
                }
                return $paciente;
            }
            
            return 'Usuario o contraseña incorrectos';
        } catch (PDOException $e) {
            return 'Error al devolver los datos.<br>' . $e->getMessage();
        }
    }
}
