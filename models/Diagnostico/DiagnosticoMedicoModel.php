<?php

class DiagnosticoMedicoModel extends Basedatos {
    
    private $table;
    private $conexion;

    public function __construct() {
        $this->table = "medico_diagnostico_paciente";
        $this->conexion = $this->getConexion();
    }
    
    /**
     * Get a diagnosis of a patient
     * @param type $paciente
     * @param type $medico
     * @return string
     */
    public function getDiagnosisPatient($paciente, $medico) {
        try {
            $sql = 'SELECT md.fecha, d.descripcion, p.DNI, p.nombre, p.apellidos FROM `medico_diagnostico_paciente` md join medicos m on(md.medico_id = m.id) JOIN pacientes p on(md.paciente_id = p.id) JOIN diagnosticos d on(md.diagnostico_id = d.id) WHERE paciente_id = ? and medico_id = ?';
            $sentencia = $this->conexion->prepare($sql);
            $sentencia->bindParam(1, $paciente);
            $sentencia->bindParam(2, $medico);
            $sentencia->execute();
            $diagnosis = $sentencia->fetchAll(PDO::FETCH_ASSOC);
            
            if ($diagnosis) {
                return $diagnosis;
            }
            
            return 'No se encuentra ningún diagnostico';
        } catch (PDOException $e) {
            return 'Error al devolver el diagnostico.<br>'. $e->getMessage();
        }
    }
    
    /**
     * New diagnosis for a patient
     * @param type $post
     * @return string
     */
    public function insertDiagnosis($post) {
        try {
            $sql = `insert into $this->table ('fecha', 'medico_id', 'diagnostico_id', 'paciente_id') values (?, ?, ?, ?)`;
            $sentencia = $this->conexion->prepare($sql);
            $sentencia->bindParam(1, $post['fecha']);
            $sentencia->bindParam(2, $post['medico_id']);
            $sentencia->bindParam(3, $post['diagnostico_id']);
            $sentencia->bindParam(4, $post['paciente_id']);
            $insert = $sentencia->execute();
            
            return 'Diagnostico creado';
        } catch (PDOException $e) {
            return "ERROR AL INSERTAR.<br>" . $e->getMessage();
        }
    }
}

