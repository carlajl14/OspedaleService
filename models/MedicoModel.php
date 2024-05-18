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
    
    /**
     * New Doctor
     * @param type $post
     * @return string
     */
    public function RecordDoctor($post) {
        try {
            $sql = `insert into $this->table ('DNI', 'nombre', 'apellidos', 'direccion', 'telefono', 'email', 'password', 'especialidad_id') values (?, ?, ?, ?, ?, ?, ?, ?)`;
            $sentencia = $this->conexion->prepare($sql);
            $sentencia->bindParam(1, $post['DNI']);
            $sentencia->bindParam(2, $post['nombre']);
            $sentencia->bindParam(3, $post['apellidos']);
            $sentencia->bindParam(4, $post['direccion']);
            $sentencia->bindParam(5, $post['telefono']);
            $sentencia->bindParam(6, $post['email']);
            $sentencia->bindParam(7, $post['password']);
            $sentencia->bindParam(8, $post['especialidad_id']);
            $insert = $sentencia->execute();
            
            $mensaje = "";
            $mensaje = "Se ha registrado correctamente";
            return $mensaje;
            
        } catch (PDOException $e) {
            return 'Error al registrarse.<br>'. $e->getMessage();
        }
    }
}
