<?php

require_once ('db/db.php');
require_once ('models/MedicamentoPacienteModel.php');

$medicamento = new MedicamentoPacienteModel();
@header("Content-type: application/json");
// Consultar GET
// devuelve o 1 o todos, dependiendo si recibe o no parámetro
if ($_SERVER['REQUEST_METHOD'] == 'GET') {
    if (isset($_GET['medico']) && isset($_GET['paciente'])) {
        $res = $medicamento->getMedicinePatient($_GET['medico'], $_GET['paciente']);
        echo json_encode($res);
        exit();
    } else {
        exit();
    }
}

// En caso de que ninguna de las opciones anteriores se haya ejecutado
header("HTTP/1.1 400 Bad Request");