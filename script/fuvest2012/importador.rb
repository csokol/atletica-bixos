#! /usr/bin/ruby

lista = File.open(ARGV[0]).readlines

id = 1
curso = 0
lista.each do |pessoa|
  if pessoa =~ /^\d+\s+(\S.*)/
    nome = $1.chomp
		puts nome
  end
	bixo = Bixo.new
	bixo.nome = nome
	bixo.save!
end
