# language: pt
Funcionalidade: Autenticar Usuário
	Para acesso à área administrativa do sistema
	Como visitante
	Quero autenticar com um usuário já cadastrado
	
	Cenário: Autenticação com sucesso
		Dado que estou na página de autenticação
		Quando digito "25757687649" no campo "CPF"
			E digito "secret" no campo "Senha"
			E clico no botão "Entrar"
		Então vejo o texto "Jose das Couves" na tela

	Cenário: CPF inválido
		Dado que estou na página de autenticação
		Quando digito "11111111111" no campo "CPF"
			E digito "secret" no campo "Senha"
			E clico no botão "Entrar"
		Então vejo o texto "CPF inválido" na tela

	Cenário: Senha inválida
		Dado que estou na página de autenticação
		Quando digito "25757687649" no campo "CPF"
			E digito "incorreta" no campo "Senha"
			E clico no botão "Entrar"
		Então vejo o texto "Senha inválida" na tela

	Cenário: CPF não cadastrado
		Dado que estou na página de autenticação
		Quando digito "68300828389" no campo "CPF"
			E digito "secret" no campo "Senha"
			E clico no botão "Entrar"
		Então vejo o texto "CPF não cadastrado" na tela

	Cenário: CPF mascarado
		Dado que estou na página de autenticação
		Quando digito "257.576.876-49" no campo "CPF"
			E digito "secret" no campo "Senha"
			E clico no botão "Entrar"
		Então vejo o texto "Jose das Couves" na tela

	Cenário: CPF em branco
		Dado que estou na página de autenticação
		Quando digito "" no campo "CPF"
			E digito "" no campo "Senha"
			E clico no botão "Entrar"
		Então vejo o texto "CPF inválido" na tela
