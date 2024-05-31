<?php

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
            $sql = 'SELECT p.id, p.DNI, p.nombre, p.apellidos, p.direccion, p.telefono, p.email, p.password FROM pacientes p JOIN medico_atiende_paciente mp on (p.id = mp.paciente_id) join medicos m on (mp.medico_id = m.id) WHERE m.id = ?';
            $sentencia = $this->conexion->prepare($sql);
            $sentencia->bindParam(1, $id);
            $sentencia->execute();
            $patients = $sentencia->fetchAll(PDO::FETCH_ASSOC);
            
            //Check to see if any patient returns
            if ($patients) {
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
            $sql = 'select COUNT(*) from medico_atiende_paciente where fecha = ? and hora = ?';
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
                $sql = 'insert into medico_atiende_paciente (fecha, hora, medico_id, paciente_id) values (?, ?, ?, ?)';
                $sentencia = $this->conexion->prepare($sql);
                $sentencia->bindParam(1, $post['fecha']);
                $sentencia->bindParam(2, $post['hora']);
                $sentencia->bindParam(3, $post['medico_id']);
                $sentencia->bindParam(4, $post['paciente_id']);
                $insert = $sentencia->execute();
                
                return 'Cita insertada correctamente';
            }
        } catch (PDOException $e) {
            return 'Error al insertar la cita.<br>'. $e->getMessage();
        }
    }
    
    /**
     * Delete appointment
     * @param type $fecha
     * @param type $hora
     * @return string
     */
    public function deleteAppointment($id) {
        try {
            $sql = 'delete from medico_atiende_paciente where id = ?';
            $sentencia = $this->conexion->prepare($sql);
            $sentencia->bindParam(1, $id);
            $delete = $sentencia->execute();
            
            $mensaje = "";
            if ($sentencia->rowCount() == 0) {
                $mensaje = "No se localiza la cita.";
                return $mensaje;
            } else {
                $mensaje = "Cita borrada correctamente.";
                return $mensaje;
            }
        } catch (PDOException $e) {
            return 'Error al borrar.<br>' . $e->getMessage();
        }
    }
}