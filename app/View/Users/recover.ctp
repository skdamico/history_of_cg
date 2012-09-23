<form action='/users/recover' accept-charset='utf-8' id="RecoverForm">
<h2>Recover Password</h2>

<?php
echo $form->create('User', array('action' => 'recover'));
echo $form->input('email');
echo $form->end('Recover');
?>
