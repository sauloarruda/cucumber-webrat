<h1>Anunciar Veículo</h1>
<?php echo $form->create('Anuncio');?>
	<?= $form->input( 'marca', array( 'options' => $marcas ) ) ?>
	<?php
		echo $form->select('modelo_id');
		echo $form->input('quilometragem');
		echo $form->input('preco');
	?>
<?php echo $form->end('Gravar');?>
