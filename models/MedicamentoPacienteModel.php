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
    public function getMedicinePatient($medico, $paciente) {
        try {
            $sql = 'SELECT mm.fecha, me.nombre, p.DNI, p.nombre, p.apellidos FROM `medico_medicamento_paciente` mm join medicos m on(mm.medico_id = m.id) JOIN pacientes p on(mm.paciente_id = p.id) JOIN medicamentos me on(mm.medicamento_id = me.id) WHERE mm.medico_id = ? and mm.paciente_id = ?';
            $sentencia = $this->conexion->prepare($sql);
            $sentencia->bindParam(1, $medico);
            $sentencia->bindParam(2, $paciente);
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
}
