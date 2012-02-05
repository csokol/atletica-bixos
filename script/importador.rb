#! /usr/bin/ruby

lista = File.open(ARGV[0]).readlines

id =1
curso = 0
lista.each do |pessoa|
  if pessoa =~ /^\s*CURSO \d\d\-(([\wêáíçã]*\s*)*)/
    curso = $1.chomp
    case curso
    when "Bacharelado em Ciência da Computação"
      curso = 1
    when "Bacharelado em Matemática Aplicada e Computacional"
      curso = 2
    when "Bacharelado em Matemática "
      curso = 3
    when "Bacharelado em Estatística"
      curso = 4
    when "Matemática "
      curso = 5
    when "Bacharelado em Matemática Aplicada"
      curso = 6
    end
  else
    unless pessoa =~ /^\s*\r*\n*$/ or pessoa === ''
      puts "#{id}:"
      pessoa = pessoa[8..-1]
      pessoa.gsub! /\s\s+/, ""
      puts "  id: #{id}"
      puts "  nome: #{pessoa}"
      puts "  curso_id: #{curso}\n\n"
      id += 1
    end
  end
end
