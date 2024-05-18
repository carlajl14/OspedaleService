<?php

class PacienteModel extends Basedatos {
    
    private $table;
    private $conexion;

    public function __construct() {
        $this->table = "pacientes";
        $this->conexion = $this->getConexion();
    }
    
    /**
     * Get appointments from each patient
     * @param type $id
     */
    public function getPatientAppointment($id) {
        try {
            $sql = `select * from medico_atiende_paciente where paciente_id = ?`;
            $sentencia = $this->conexion->prepare($sql);
            $sentencia->bindParam(1, $id);
            $sentencia->execute();
            $appointment = $sentencia->fetchAll(PDO::FETCH_ASSOC);
            
            //Check to see if any appointment returns
            if ($appointment) {
                return $appointment;
            }
            
            return 'Paciente incorrecto';
        } catch (PDOException $e) {
            return 'Error al devolver las citas.<br>'. $e->getMessage();
        }
    }
}

