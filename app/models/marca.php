<?php
class Marca extends AppModel {

	var $name = 'Marca';
	var $hasMany = array('modelo');
}
?>