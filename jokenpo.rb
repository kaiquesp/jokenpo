def calcula_vencedor(sua_escolha, pc_escolha)
	resultado = (sua_escolha - pc_escolha) % 3

	if resultado == 1
		'Você ganhou'
	elsif resultado == 2
		'PC Ganhou'
	else
		'Deu empate'
	end
end

opcoes = {
	1 => 'Pedra',
	2 => 'Papel',
	3 => 'Tesoura'
}

novo_jogo = 's'

while novo_jogo == 's'
	opcoes.each do |k, v|
		puts "#{k} - #{v}"
	end

	print 'Escolha uma das opções: '
	sua_escolha = gets.to_i

	while opcoes[sua_escolha].nil?
		puts 'opção inválida, escolha novamente: '
		sua_escolha = gets.to_i
	end

	pc_escolha = Random.rand(3) + 1

	puts "\nVocê escolheu #{opcoes[sua_escolha]}"
	puts "\nPC escolheu #{opcoes[pc_escolha]}\n\n"

	puts calcula_vencedor(sua_escolha, pc_escolha)

	print "\n\nDeseja jogar novamente? (s/n): "
	novo_jogo = gets.chomp
end

puts 'Obrigado, por jogar'

