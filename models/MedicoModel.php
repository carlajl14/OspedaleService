<?php

class MedicoModel extends Basedatos {
    
    private $table;
    private $conexion;

    public function __construct() {
        $this->table = "medicos";
        $this->conexion = $this->getConexion();
    }
    
    /**
     * Get appointments from each doctor
     * @param type $id
     */
    public function getDoctorappointment($id) {
        try {
            $sql = `select * from medico_atiende_paciente where medico_id = ?`;
            $sentencia = $this->conexion->prepare($sql);
            $sentencia->bindParam(1, $id);
            $sentencia->execute();
            $appointment = $sentencia->fetchAll(PDO::FETCH_ASSOC);
            
            //Check to see if any appointment returns
            if ($appointment) {
                return $appointment;
            }
            
            return 'Medico incorrecto';
        } catch (PDOException $e) {
            return 'Error al devolver las citas.<br>'. $e->getMessage();
        }
    }
}
