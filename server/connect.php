<?php

DEFINE('HOST','localhost');
DEFINE('USER','root');
DEFINE('PASSWORD','');
DEFINE('DATABASE','itoken'); 

$connect= mysqli_connect(HOST,USER,PASSWORD,DATABASE) or die ('Não foi possível conectar');
