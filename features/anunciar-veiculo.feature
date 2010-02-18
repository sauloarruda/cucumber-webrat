Funcionalidade: Anunciar Veículo
	Para promover um veículo que desejo vender
	Como pessoa física
	Quero cadastrar um anúncio
	
	Cenário: Criar anúncio simples
		Dado que estou na página de anúncio
		Quando escolho "Citroem" no campo "Marca"
			E escolho "C3 1.4 GLX" no campo "Modelo"
			E escolho "2007" no campo "Ano"
			E escolho "2008" no campo "Ano/Modelo"
			E escolho "Prata" no campo "Cor"
			E digito "40.000" no campo "Quilometragem"
			E escolho "Bicombustível" no campo "Combustível"
			E digito "32.500" no campo "Preço"
			E escolho o arquivo "./fotos/c3-1.jpg" para o campo "Foto 1"
			E escolho o arquivo "./fotos/c3-2.jpg" para o campo "Foto 2"
			E escolho o arquivo "./fotos/c3-3.jpg" para o campo "Foto 3"
			E escolho o arquivo "./fotos/c3-4.jpg" para o campo "Foto 4"	
			E clico no botão "Gravar"
		Então recebo o aviso "Anúncio gravado com sucesso!"
			E vejo o texto "C3 GLX 1.4" na tela
