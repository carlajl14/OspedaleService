<?php

require_once $_SERVER['DOCUMENT_ROOT'] . "/OspedaleService/objects/PacienteObject.php";

class PacienteModel extends Basedatos {
    
    private $table;
    private $conexion;

    public function __construct() {
        $this->table = "medico_atiende_paciente";
        $this->conexion = $this->getConexion();
    }
    
    /**
     * Get patients from each doctor
     * 
     * @return type
     */
    public function allPacientes($id) {
        try {
            $sql = `SELECT p.id, p.DNI, p.nombre, p.apellidos, p.direccion, p.telefono, p.email, p.password FROM pacientes p JOIN $this->table mp on (p.id = mp.paciente_id) join medicos m on (mp.medico_id = m.id) WHERE m.id = ?`;
            $sentencia = $this->conexion->prepare($sql);
            $sentencia->bindParam(1, $id);
            $sentencia->execute();
            $patients = $sentencia->fetchAll(PDO::FETCH_ASSOC);
            
            //Check to see if any patient returns
            if ($patients) {
                foreach ($patients as $patient) {
                    $paciente = new Paciente($patient['id'], $patient['DNI'], $patient['nombre'], $patient['apellidos'], $patient['direccion'], $patient['telefono'], $patient['email'], $patient['password']);
                }
                return $patients;
            }
        } catch (PDOException $e) {
            return 'Error al devolver los pacientes.<br>' . $e->getMessage();
        }
    }
}
