<?php echo $form->create(array('action' => "entrar"));?>
	<?php echo $form->input('CPF', array('name' => 'CPF'))?>
	<?php echo $form->input('Senha', array('name' => 'Senha'))?>
<?php echo $form->end('Entrar');?>