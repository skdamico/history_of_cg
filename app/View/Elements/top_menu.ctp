<?php
  echo $this->Html->script(array('common'), array('once' => true));

  if(isset($current_user) && !empty($current_user)) {
    echo $this->Html->link("Logout", "/logout");
    echo $this->Html->link("About", "/about");
    echo $this->Html->link("Add an Entry", "/entries/add");
    echo "<span class='menu-item'>Hello, ".$current_user["first_name"]."</span>";
  }
  else {
    echo $this->Html->link("About", "/about");
    echo "<a href='#' id='login_button'>Login/Signup</a>";
  }
?>
<div id='login_box'>
    <div class='signup-or-login login'>
        <a href='#'>Not signed up yet?</a>
    </div>
    <div class='form-container'></div>
</div>
