<?php

// Use in the "Post-Receive URLs" section of your GitHub repo.

if ( $_POST['payload'] ) {
  shell_exec( 'cd /var/www/staging.historyofcg.com/historyofcg/ && git reset --hard HEAD && git pull origin master' );
}

?>hi
