<?php
class LoginController extends AppController {
	
	var $uses = array('Usuario');
	var $name = "Login";

	function index() {
	}

	function entrar() {
		$this->data = $this->params["form"];
		$cpf = str_replace("-", "", str_replace(".", "", $this->data['CPF']));
		if (!$this->is_valid($cpf)) {
			return $this->flash('CPF inválido', '/login');
		}
		$usuario = $this->Usuario->find('first', array('fields' => 'senha, nome, id', 'conditions' => array('Usuario.cpf' => $cpf)));
		$usuario = $usuario["Usuario"];
		if (empty($usuario)) {
			return $this->flash('CPF não cadastrado', '/login');
		} 
		
		if ($this->data['Senha'] != $usuario["senha"]) {
			return $this->flash('Senha inválida', '/login');
		}
		$this->Session->setFlash('Bem vindo '. $usuario["nome"]);
		$this->redirect('/home');
	}
	
	private function is_valid($cpf) {
		if ($cpf == '11111111111' || empty($cpf)) return false;
		else return true;
	}

}
?>