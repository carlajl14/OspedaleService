<?php

require_once ('db/db.php');
require_once ('models/DiagnosticoMedicoModel.php');

$diagnosticomedico = new DiagnosticoMedicoModel();
@header("Content-type: application/json");
// Consultar GET
// devuelve o 1 o todos, dependiendo si recibe o no parámetro
if ($_SERVER['REQUEST_METHOD'] == 'GET') {
    if (isset($_GET['medico']) && isset($_GET['paciente'])) {
        $res = $diagnosticomedico->getDiagnosisPatient($_GET['paciente'], $_GET['medico']);
        echo json_encode($res);
        exit();
    } else {
        //$res = $pasaje->getPasajes();
        echo json_encode($res);
        exit();
    }
}
// En caso de que ninguna de las opciones anteriores se haya ejecutado
header("HTTP/1.1 400 Bad Request");
