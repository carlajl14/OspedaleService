<?php

require_once ('db/db.php');
require_once ('models/DiagnosticoModel.php');

$diagnostico = new DiagnosticoModel();
@header("Content-type: application/json");

// Crear un nuevo reg POST
// Los campos del array que venga se deberán llamar como los campos de la tabla medicos
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    // se cargan toda la entrada que venga en php://input
    $post = json_decode(file_get_contents('php://input'), true);
    $nombre = $post['descripcion'];
    $res = $diagnostico->insertDiagnosis($nombre);
    $resul['resultado'] = $res;
    echo json_encode($resul);
    exit();
}
// En caso de que ninguna de las opciones anteriores se haya ejecutado
header("HTTP/1.1 400 Bad Request");
