<?php echo $this->Html->link("About", "/about"); ?>

<?php
  if(isset($current_user) && !empty($current_user)) {
    echo $this->Html->link("Logout", "/logout");
    echo $this->Html->link("My Account", "/users/view");
    echo $this->Html->link("Add an Entry", "/entries/add");
  }
  else {
    echo $this->Html->link("Sign Up", "/signup");
    echo $this->Html->link("Login", "/login");
  }
?>
