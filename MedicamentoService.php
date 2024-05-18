<?php

require_once ('db/db.php');
require_once ('models/MedicamentoModel.php');

$medicamento = new MedicamentoModel();
@header("Content-type: application/json");
// Consultar GET
// devuelve o 1 o todos, dependiendo si recibe o no parámetro
if ($_SERVER['REQUEST_METHOD'] == 'GET') {
    if (isset($_GET['nombre'])) {
        $res = $medicamento->getMedicine($_GET['nombre']);
        echo json_encode($res);
        exit();
    } else {
        exit();
    }
}
// En caso de que ninguna de las opciones anteriores se haya ejecutado
header("HTTP/1.1 400 Bad Request");