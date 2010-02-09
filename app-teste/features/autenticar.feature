# language: pt
Funcionalidade: Autenticar
	Para acessar a área administrativa do sistema
	Como visitante
	Eu quero digitar meu usuário e senha e obter o acesso

	Cenário: Autenticação com sucesso
		Dado que acessei a página de login
		Quando digito "sauloarruda" no campo "login"
		  E digito "secret" no campo "senha"
		  E clico no botão "Entrar"
		Então vejo o texto "sauloarruda" na tela

	Cenário: Usuário inválido
		Dado que acessei a página de login
		Quando digito "usuario.invalido" no campo "login"
		  E digito "secret" no campo "senha"
		  E clico no botão "Entrar"
		Então vejo o texto "Usuário ou senha inválidos" na tela

	Cenário: Senha inválida
		Dado que acessei a página de login
		Quando digito "sauloarruda" no campo "login"
		  E digito "senha-invalida" no campo "senha"
		  E clico no botão "Entrar"
		Então vejo o texto "Usuário ou senha inválidos" na tela