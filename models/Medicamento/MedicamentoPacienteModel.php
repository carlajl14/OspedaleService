<?php

class MedicamentoPacienteModel extends Basedatos {
    
    private $table;
    private $conexion;

    public function __construct() {
        $this->table = "medico_medicamento_paciente";
        $this->conexion = $this->getConexion();
    }
    
    /**
     * Get a medicine of a patient
     * @param type $medico
     * @param type $paciente
     * @return string
     */
    public function getMedicinePatient($paciente) {
        try {
            $sql = 'SELECT mm.fecha, me.nombre, m.nombre as "nombre_medico", m.apellidos, e.nombre as "especialidad" FROM `medico_medicamento_paciente` mm join medicos m on(mm.medico_id = m.id) JOIN especialidades e on (m.especialidad_id = e.id) JOIN pacientes p on(mm.paciente_id = p.id) JOIN medicamentos me on(mm.medicamento_id = me.id) WHERE mm.paciente_id = ?';
            $sentencia = $this->conexion->prepare($sql);
            $sentencia->bindParam(1, $paciente);
            $sentencia->execute();
            $medicine = $sentencia->fetchAll(PDO::FETCH_ASSOC);
            
            if ($medicine) {
                return $medicine;
            }
            
            return 'No se encuentra ninguna medicina';
        } catch (PDOException $e) {
            return 'Error al devolver el medicamento.<br>'. $e->getMessage();
        }
    }
    
    /**
     * New medicine for a patient
     * @param type $post
     * @return string
     */
    public function insertMedicinePatient($post) {
        try {
            $sql = "insert into medico_medicamento_paciente ('fecha', 'medico_id', 'medicamento_id', 'paciente_id') values (?, ?, ?, ?)";
            $sentencia = $this->conexion->prepare($sql);
            $sentencia->bindParam(1, $post['fecha']);
            $sentencia->bindParam(2, $post['medico_id']);
            $sentencia->bindParam(3, $post['medicamento_id']);
            $sentencia->bindParam(4, $post['paciente_id']);
            $insert = $sentencia->execute();
            
            return 'Medicamento creado';
        } catch (PDOException $e) {
            return "ERROR AL INSERTAR.<br>" . $e->getMessage();
        }
    }
}
