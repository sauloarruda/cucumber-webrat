<?php
class AnuncioController extends AppController {

	var $name = 'Anuncio';

	function index() {
		$this->set('marcas', $this->Anuncio->Modelo->Marca->find('list', array('fields' => 'id, nome', 'order' => 'nome')));
	}

}
?>