# ruby encoding: utf-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
# Pra rodar: rake db:setup


	lista_pessoas = [
		["Ermano Ardiles Arruda", "234567890" ,"eaa3@cin.ufpe.br", false],
		["Ingrid Guimaraes","23456765456765", "ig@ig.com.br", false],
		["Bruno Batista da Silva","23456765456765", "brunobat@gmail.com", false],
		["Kaua Rocha Costa","23456765456765", "kauas@gmail.com", false],
		["Giovana Carvalho Rodrigues","23456765456765", "gio121212@gmail.com", false],
		["Nicolas Correia Cavalcanti","23456765456765", "nickool@yahoo.com.br", false],
		["Yasmin Silva Correia","23456765456765", "correia_yasmins@aol.com", false],
		["Giovana Ribeiro Pinto","23456765456765", "gioovana@linuxmail.com", false],
		["EPD Ltda.","23456765456765", "contato@epdltda.com", true],
		["Tomás Materiais para Construcao","23456765456765", "tomasmateriaisparaconstrucao@gmail.com", true],
	]

	lista_funcionarios = [
		["Gerente", "837.429.182-34", "abracadabra", false, "Escravo", "6666666666666"],
		["Vendedor", "992.837.123-12", "adjailsajunior23", false, "Montador", "gleissis24EVER_"],
		["Vendedor", "920.3842.72-12", "brubat", false, "Mascote", "abc123!@#"],
	]

	lista_fornecedores = [
		["Fornecedor 1 Ltda.", "7263287328372", "fornecedor1@gmail.com"],
		["Fornecedor 2 S.A.", "8372932932", "fornecedor2@ig.com.br"],
		["Fornecedor 3", "091281092812", "fornecedor3@gmail.com"],
	]

	lista_enderecos = [
		["Salgadinho", "53110110", "Olinda", "Av. Prof. Andrade Bezerra", "", "Pernambuco", "650", 1, "Pessoa"],
		["Piedade", "56833012", "Recife", "Rua Almirante Toronto", "A", "Pernambuco", "19", 2, "Pessoa"],
		["Aflitos", "29182821", "Recife", "Av. Eustaquio da Palerma", "13-5", "Pernambuco", "50", 3, "Pessoa"],
		["Aflitos", "54006332", "Recife", "Av. Zeus", "", "Pernambuco", "1822", 4, "Pessoa"],
		["Espinheiro", "53512822", "Recife", "Rua da Portela", "", "Pernambuco", "29", 5, "Pessoa"],
		["Varzea", "56239322", "Recife", "Av. Prof. Ruan Braga", "", "Pernambuco", "198", 6, "Pessoa"],
		["Espinheiro", "93370822", "Recife", "Rua das Gracas", "B", "Pernambuco", "605", 7, "Pessoa"],
		["Aguazinha", "12309845", "Olinda", "Av. Mercador de Sarueri", "", "Pernambuco", "560", 8, "Pessoa"],
		["Aguazinha", "74928364", "Olinda", "Av. Estrela do Sul", "Bloco A", "Pernambuco", "655", 9, "Pessoa"],
		["Toto", "29937400", "Recife", "Rua Dr. Souza Leao", "", "Pernambuco", "1123", 10, "Pessoa"],
		["Campo Grande", "55455410", "Recife", "Av. Copelia Ramos de Aguiar Mattos", "", "Pernambuco", "133", 1, "Fornecedor"],
		["Varzea", "54852001", "Recife", "Av. Cidade Universitaria", "", "Pernambuco", "564", 2, "Fornecedor"],
		["Espinheiro", "50050050", "Recife", "Rua Dona Filomena", "", "Pernambuco", "659", 3, "Fornecedor"],
	]
	
	lista_telefones = [
		["81", "88392829", 1, "Pessoa"],
		["81", "32939325", 2, "Pessoa"],
		["83", "34494933", 3, "Pessoa"],
		["81", "30457348", 4, "Pessoa"],
		["81", "92838383", 5, "Pessoa"],
		["81", "38238323", 6, "Pessoa"],
		["81", "99393933", 7, "Pessoa"],
		["85", "98374384", 8, "Pessoa"],
		["81", "83838383", 9, "Pessoa"],
		["81", "81249180", 10, "Pessoa"],
		["81", "32449395", 1, "Fornecedor"],
		["81", "32449750", 2, "Fornecedor"],
		["81", "33424456", 3, "Fornecedor"],
	]

	lista_materiaprima = [
		["Tecido", "0001", "Tecido forro interno almofadas", 0],
		["Carretel de linha", "0002", "Linha preta utilizada para costura geral", 0],
		["Agulha", "0003", "Agulha para tecidos finos", 0],
	]

	lista_produtos = [ 
		["Capa Sofa - TEKA", 30.00 , "1", "Produto de Qualidade", 0],
		["Lencol Casal - TEKA", 20.00 , "2", "Produto de Qualidade", 0],
		["Lencol Solteiro - Antonio e Filhos", 30.00 , "3", "Produto de Qualidade", 0],
		["Puff", 30.00 , "4", "Produto de Qualidade", 0],
	]

	lista_compra_produtos = [
		[Time.parse("10-10-2012"), 2, 300.00, 1],
		[Time.parse("11-10-2013"), 2, 30.00, 2],
	]

	lista_relacao_compra_produtos = [
		[1, 1, 1],
		[2, 1, 1],
		[3, 2, 1],
	]

	lista_compra_materias_primas = [
		[Time.parse("10-10-2013"), 1, 40.30, 1],
		[Time.parse("21-11-2013"), 1, 10.30, 2],
		[Time.parse("01-01-2013"), 2, 34.34, 3],
	]

	lista_relacao_compra_materias_primas = [
		[1, 1, 1],
		[2, 2, 1],
		[3, 3, 1],
	]

	lista_producao = [
		[Time.parse("11-11-2013"), 1, 4],
	]

	lista_relacao_producao = [
		[1, 1, 1],
		[2, 1, 1],
		[3, 1, 1],
	]

	lista_solicitacao = [
		[1, Time.parse("12-12-2013"), 0.0, 300.0, 1, 4, 4],
		[1, Time.parse("01-01-2014"), 10.0, 50.0, 2, 1, 5],
	]

	lista_relacao_solicitacao = [
		[1, 1, 1],
		[2, 1, 1],
		[4, 2, 1],
	]

	lista_pessoas.each do |nome, cadastro, email, juridico|
		Pessoa.create(nome: nome, cadastro: cadastro, email: email, juridico: juridico)
	end

	lista_funcionarios.each do |nome, cadastro, email, juridico, cargo, senha|
		Funcionario.create(nome:nome, cadastro:cadastro, email:email, juridico:juridico, cargo:cargo, senha:senha)
	end

	lista_fornecedores.each do |nome, cnpj, email|
		Fornecedor.create(nome: nome, cnpj: cnpj, email: email)
	end

	lista_enderecos.each do |bairro, cep, cidade, logradouro, complemento, estado, numero, enderecavel_id, enderecavel_type|
		Endereco.create(bairro: bairro, cep: cep, cidade: cidade, logradouro: logradouro, complemento: complemento, estado: estado, numero: numero, enderecavel_id:enderecavel_id, enderecavel_type:enderecavel_type)
	end

	lista_telefones.each do |ddd, numero, telefonavel_id, telefonavel_type|
		Telefone.create(ddd: ddd, numero: numero, telefonavel_id:telefonavel_id, telefonavel_type:telefonavel_type)
	end

	lista_materiaprima.each do |nome, codigo, descricao, quantidade|
		MateriaPrima.create(nome: nome, codigo: codigo, descricao: descricao, quantidade: quantidade)
	end

	lista_produtos.each do |nome, preco, codigo, descricao, quantidade|
		Produto.create(nome: nome, preco: preco, codigo:codigo, descricao:descricao, quantidade:quantidade)
	end

	lista_compra_produtos.each do |data, status, pagamento, fornecedor_id|
		CompraProduto.create(data: data, status: status, pagamento:pagamento, fornecedor_id: fornecedor_id)
	end

	lista_relacao_compra_produtos.each do |produto_id, compra_produto_id, quantidade|
		ProdutoComprado.create(produto_id: produto_id, compra_produto_id: compra_produto_id, quantidade: quantidade)
	end

	lista_compra_materias_primas.each do |data, status, pagamento, fornecedor_id|
		CompraMateriaPrima.create(data: data, status: status, pagamento: pagamento, fornecedor_id: fornecedor_id)
	end

	lista_relacao_compra_materias_primas.each do |materia_prima_id, compra_materia_prima_id, quantidade|
		MateriaComprada.create(materia_prima_id: materia_prima_id, compra_materia_prima_id: compra_materia_prima_id, quantidade: quantidade)
	end

	lista_producao.each do |data, quantidade, produto_id|
		Producao.create(data: data, quantidade: quantidade, produto_id: produto_id)
	end

	lista_relacao_producao.each do |materia_prima_id, producao_id, quantidade|
		MateriaUtilizada.create(materia_prima_id: materia_prima_id, producao_id: producao_id, quantidade: quantidade)
	end

	lista_solicitacao.each do |status, data, desconto, pagamento, pessoa_id|
		Solicitacao.create(status: status, data: data, desconto: desconto, pagamento: pagamento, pessoa_id: pessoa_id)
	end

	lista_relacao_solicitacao.each do |produto_id, solicitacao_id, quantidade|
		ProdutoSolicitado.create(produto_id: produto_id, solicitacao_id: solicitacao_id, quantidade: quantidade)
	end