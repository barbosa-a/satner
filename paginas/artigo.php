<?php

echo "Página para visualizar o artigo<br>";

// Receber o valor enviado pela URL amigável
//var_dump($url[1]);
echo $url[1];
// Receber o valor enviado na variável da URL
$situacao = filter_input(INPUT_GET, 'situacao', FILTER_SANITIZE_NUMBER_INT);
//var_dump($situacao);