<?php
class AppController extends Controller {
	var $uses = array();
	var $helpers = array('Html', 'Form', 'Javascript', 'Time');
	
	function __construct() {
		parent::__construct();
	}
	
}
?>