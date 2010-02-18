<?php
class Modelo extends AppModel {

	var $name = 'Modelo';
	var $belongsTo = array('Marca');
	var $hasMany = array('Anuncio');
}
?>