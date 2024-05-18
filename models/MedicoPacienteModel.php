<?php

require_once $_SERVER['DOCUMENT_ROOT'] . "/OspedaleService/objects/PacienteObject.php";

class MedicoPacienteModel extends Basedatos {
    
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
    
    /**
     * Check date and time
     * @param type $date
     * @param type $time
     */
    public function checkDateTime($date, $time) {
        try {
            $sql = `select count(*) from $this->table where fecha = ? and hora = ?`;
            $sentencia = $this->conexion->prepare($sql);
            $sentencia->bindParam(1, $date);
            $sentencia->bindParam(2, $time);
            $sentencia->execute();
            $datetime = $sentencia->fetch(PDO::FETCH_ASSOC);
            
            //Check if it returns something
            if ($datetime['COUNT(*)'] > 0) {
                return true;
            } else {
                return false;
            }
            
        } catch (PDOException $e) {
            return 'Esa cita ya esta ocupada.';
        }
    }
    
    /**
     * Add a appointment
     * @param type $post
     * @return string
     */
    public function postAppointment($post) {
        try {
            $checkdatetime = $this->checkDateTime($post['fecha'], $post['hora']);
            
            if ($checkdatetime == false) {
                $sql = `insert into $this->table ('fecha', 'hora', 'medico_id', 'paciente_id') values (?, ?, ?, ?)`;
                $sentencia = $this->conexion->prepare($sql);
                $sentencia->bindParam(1, $post['fecha']);
                $sentencia->bindParam(2, $post['hora']);
                $sentencia->bindParam(3, $post['medico_id']);
                $sentencia->bindParam(4, $post['paciente_id']);
                $insert = $sentencia->execute();
                
                $mensaje = "";
                $mensaje = 'Cita insertada correctamente';
                return $mensaje;
            }
        } catch (PDOException $e) {
            return 'Error al insertar la cita.<br>'. $e->getMessage();
        }
    }
}
