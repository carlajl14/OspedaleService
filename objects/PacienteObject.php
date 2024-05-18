<?php

class Paciente {
    public $id;
    public $DNI;
    public $nombre;
    public $apellidos;
    public $direccion;
    public $telefono;
    public $email;
    public $password;


    public function __construct($id, $DNI, $nombre, $apellidos, $direccion, $telefono, $email, $password) {
        $this->DNI = $DNI;
        $this->nombre = $nombre;
        $this->apellidos = $apellidos;
        $this->direccion = $direccion;
        $this->telefono = $telefono;
        $this->email = $email;
        $this->password = $password;
    }
    
    public function getId() {
        return $this->id;
    }

    public function getDNI() {
        return $this->DNI;
    }

    public function getNombre() {
        return $this->nombre;
    }

    public function getApellidos() {
        return $this->apellidos;
    }

    public function getDireccion() {
        return $this->direccion;
    }

    public function getTelefono() {
        return $this->telefono;
    }

    public function getEmail() {
        return $this->email;
    }

    public function setId($id): void {
        $this->id = $id;
    }

    public function setDNI($DNI): void {
        $this->DNI = $DNI;
    }

    public function setNombre($nombre): void {
        $this->nombre = $nombre;
    }

    public function setApellidos($apellidos): void {
        $this->apellidos = $apellidos;
    }

    public function setDireccion($direccion): void {
        $this->direccion = $direccion;
    }

    public function setTelefono($telefono): void {
        $this->telefono = $telefono;
    }

    public function setEmail($email): void {
        $this->email = $email;
    }
    
    public function getPassword() {
        return $this->password;
    }

    public function setPassword($password): void {
        $this->password = $password;
    }
}
