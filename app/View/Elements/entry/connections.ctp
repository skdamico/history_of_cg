<?php foreach($connections as $connection): ?>
  <?php echo $this->element('entry/connection', array('connection' => $connection)); ?>
<?php endforeach; ?>
