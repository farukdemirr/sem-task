<?php

require_once 'db.php';

$sql = 'SELECT * FROM cars';
$where_string_clause = [];
$where_clause_values = [];


$brand_id = $_GET['brand_id'];
if (!empty($brand_id)) {
    $where_string_clause['brand_id'] = 'brand_id=:brand_id';
    $where_clause_values['brand_id'] = $brand_id;
}

$year = $_GET['year'];
if (!empty($year)) {
    $where_string_clause['year'] = 'year=:year';
    $where_clause_values['year'] = $year;
}

$ext_color = $_GET['ext_color'];
if (!empty($ext_color)) {
    $where_string_clause['ext_color'] = 'ext_color=:ext_color';
    $where_clause_values['ext_color'] = $ext_color;
}

$int_color = $_GET['int_color'];
if (!empty($int_color)) {
    $where_string_clause['int_color'] = 'int_color=:int_color';
    $where_clause_values['int_color'] = $int_color;
}
$transmission = $_GET ['transmission'];
if (!empty($transmission)) {
    $where_string_clause['transmission'] = 'transmission_type=:transmission';
    $where_clause_values['transmission'] = $transmission;
}

$price = $_GET['price'];
if (!empty($price)) {
    $where_string_clause['price'] = 'price >=:price';
    $where_clause_values['price'] = $price;
}

$model = $_GET['model'];
if (!empty($model)){
    $where_string_clause['model'] = 'model=:model';
    $where_clause_values['model'] = $model;
}

if (!empty($where_string_clause)) {
    $sql .= " WHERE " . implode(' AND ', $where_string_clause);
}

$sth = $db->prepare($sql);
$sth->execute($where_clause_values);
$cars = $sth->fetchAll(PDO::FETCH_CLASS);

echo json_encode($cars);