<h2 class="hightitle"><?php __('Forget Password'); ?></h2>
<div class="forgetpwd form" style="margin:5px auto 5px auto;width:450px;">
<?php echo $this->Form->create('User', array('action' => 'forgetpwd')); ?>
<?php echo $this->Form->input('email',array('style'=>'float:left'));?>
<input type="submit" class="button" style="float:left;margin-left:3px;" value="Recover" />
<?php echo $this->Form->end();?>
</div>