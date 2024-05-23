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
            $sql = 'select * from medico_atiende_paciente where paciente_id = ?';
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
    
    /**
     * New Patient
     * @param type $post
     * @return string
     */
    public function RecordPatient($post) {
        try {
            $sql = `insert into $this->table ('DNI', 'nombre', 'apellidos', 'direccion', 'telefono', 'email', 'password') values (?, ?, ?, ?, ?, ?, ?)`;
            $sentencia = $this->conexion->prepare($sql);
            $sentencia->bindParam(1, $post['DNI']);
            $sentencia->bindParam(2, $post['nombre']);
            $sentencia->bindParam(3, $post['apellidos']);
            $sentencia->bindParam(4, $post['direccion']);
            $sentencia->bindParam(5, $post['telefono']);
            $sentencia->bindParam(6, $post['email']);
            $sentencia->bindParam(7, $post['password']);
            $insert = $sentencia->execute();
            
            $mensaje = "";
            $mensaje = "Se ha registrado correctamente";
            return $mensaje;
            
        } catch (PDOException $e) {
            return 'Error al registrarse.<br>'. $e->getMessage();
        }
    }
}

