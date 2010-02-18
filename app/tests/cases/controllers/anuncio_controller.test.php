<?php 
/* SVN FILE: $Id$ */
/* AnuncioController Test cases generated on: 2010-02-12 14:12:15 : 1265998335*/
App::import('Controller', 'Anuncio');

class TestAnuncio extends AnuncioController {
	var $autoRender = false;
}

class AnuncioControllerTest extends CakeTestCase {
	var $Anuncio = null;

	function startTest() {
		$this->Anuncio = new TestAnuncio();
		$this->Anuncio->constructClasses();
	}

	function testAnuncioControllerInstance() {
		$this->assertTrue(is_a($this->Anuncio, 'AnuncioController'));
	}

	function endTest() {
		unset($this->Anuncio);
	}
}
?>