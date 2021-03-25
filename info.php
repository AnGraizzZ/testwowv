<?php

require_once './connect.php'; // подключаем скрипт
// подключаемся к серверу
$link = mysqli_connect($host, $user, $password, $database) 
    or die("Ошибка " . mysqli_error($link));
mysqli_set_charset($link,"utf8"); //кодировка

$rockPosition      =$_POST["rockPosition"];
$timer             =$_POST["timer"];
$justJump          =$_POST["justJump"];
$rockSize          =$_POST["rockSize"];
$finish            =$_POST["finish"];

$sql = mysqli_query($link, "INSERT INTO `data` ( `rockPosition`, `timer`, `justJump`, `rockSize`, `finish` ) VALUES ( '{$rockPosition}', '{$timer}', '{$justJump}' ,'{$rockSize}','{$finish}')");


if ($sql) {
    
    echo '<p>выполнено</p>';

} else {
    echo '<p>Произошла ошибка: ' . mysqli_error($link) . '</p>';
}

?>