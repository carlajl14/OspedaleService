<?php

class EspecialidadModel extends Basedatos {
    
    private $table;
    private $conexion;

    public function __construct() {
        $this->table = "especialidades";
        $this->conexion = $this->getConexion();
    }
    
    /**
     * Get all
     * @return string
     */
    public function getEspecialidades() {
        try {
            $sql = 'select * from especialidades';
            $sentencia = $this->conexion->prepare($sql);
            $sentencia->execute();
            $especialidades = $sentencia->fetchAll(PDO::FETCH_ASSOC);
            
            if ($especialidades) {
                return $especialidades;
            }
            return 'Error al devolver las especialidades';
        } catch (PDOException $e) {
            return 'Error al devolver las especialidades.<br>' . $e->getMessage();
        }
    }
    
    /**
     * Get one
     * @param type $post
     * @return string
     */
    public function getOneEspecialidad($nombre) {
        try {
            $sql = 'select * from especialidades where nombre = ?';
            $sentencia = $this->conexion->prepare($sql);
            $sentencia->bindParam(1, $nombre);
            $sentencia->execute();
            $especialidad = $sentencia->fetch(PDO::FETCH_ASSOC);
            
            if ($especialidad) {
                return $especialidad;
            }
            return 'Error al devolver la especialidad';
        } catch (PDOException $e) {
            return 'Error al devolver la especialidad.<br>' . $e->getMessage();
        }
    }
    
    /**
     * Insert new
     * @return string
     */
    public function newEspecialidad($post) {
        try {
            $sql = 'insert into especialidades (nombre) values (?)';
            $sentencia = $this->conexion->prepare($sql);
            $sentencia->bindParam(1, $post['nombre']);
            $sentencia->execute();
            $especialidad = $sentencia->fetchAll(PDO::FETCH_ASSOC);

            $mensaje = "";
            $mensaje = "Se ha insertardo correctamente";
            return $mensaje;
        } catch (PDOException $e) {
            return 'Error el insertar.<br>'. $e->getMessage();
        }
    }
}