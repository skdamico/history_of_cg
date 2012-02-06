<?php
  if(isset($current_user) && !empty($current_user)) {
    echo $this->Html->link("Logout", "/logout");
    echo $this->Html->link("About", "/about");
    echo $this->Html->link("Add an Entry", "/entries/add");
    echo $this->Html->link("Hello, ".$current_user["User"]["first_name"], "/users/view");
  }
  else {
    echo $this->Html->link("About", "/about");
    echo $this->Html->link("Sign Up", "/signup");
    echo $this->Html->link("Login", "/login");
  }
?>
