<h2 class="hightitle"><?php __('Forget Password'); ?></h2>
<div class="forgetpwd form" style="margin:5px auto 5px auto;width:450px;">
<?php //echo $this->Form->create('User', array('action' => 'reset')); ?>
 
<?php
if(isset($errors)){
echo '<div class="error">';
echo "<ul>";
foreach($errors as $error){
 echo"<li><div class='error-message'>$error</div></li>";
}
echo"</ul>";
echo'</div>';
}
?>
 
<form method="post">
<?php
echo $this->Form->input('password',array("type"=>"password","name"=>"data[User][password]"));
echo $this->Form->input('password_confirm',array("type"=>"password","name"=>"data[User][password_confirm]"));
?>
<input type="submit" class="button" style="float:left;margin-left:3px;" value="Save" />
 
<?php //echo $this->Form->end();?>
</form>
</div>