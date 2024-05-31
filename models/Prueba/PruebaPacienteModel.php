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
            $sql = "insert into medico_prueba_paciente (fecha, medico_id, paciente_id, prueba_id) values (?, ?, ?, ?)";
            $sentencia = $this->conexion->prepare($sql);
            $sentencia->bindParam(1, $post['fecha']);
            $sentencia->bindParam(2, $post['medico_id']);
            $sentencia->bindParam(3, $post['paciente_id']);
            $sentencia->bindParam(4, $post['prueba_id']);
            $insert = $sentencia->execute();
            
            return 'Prueba mandada con éxito';
        } catch (PDOException $e) {
            return "ERROR AL INSERTAR.<br>" . $e->getMessage();
        }
    }
    
    /**
     * Get medical test for a patient
     * @param type $medico
     * @param type $paciente
     * @return string
     */
    public function getMedicalTest($paciente) {
        try {
            $sql = 'SELECT pp.fecha, m.nombre as "medico", m.apellidos, e.nombre, pr.id, pr.nombre as "prueba" FROM medico_prueba_paciente pp JOIN medicos m on(pp.medico_id = m.id) JOIN especialidades e on (m.especialidad_id = e.id) JOIN pacientes p on(pp.paciente_id = p.id) JOIN pruebas pr on (pp.prueba_id = pr.id) WHERE pp.paciente_id = ?';
            $sentencia = $this->conexion->prepare($sql);
            $sentencia->bindParam(1, $paciente);
            $sentencia->execute();
            $medicaltest = $sentencia->fetchAll(PDO::FETCH_ASSOC);
            
            if ($medicaltest) {
                return $medicaltest;
            }
            
            return 'No se encuentra ninguna prueba para este paciente';
        } catch (PDOException $e) {
            return "ERROR AL DEVOLVER LA PRUEBA.<br>" . $e->getMessage();
        }
    }
}
