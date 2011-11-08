<?php

$p = preg_replace("/(^\'|\'\z)/", "", trim("'   Jane Doe'"));

echo $p;

?>
