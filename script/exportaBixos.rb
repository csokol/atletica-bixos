def exporta nome
  f = File.open "bixos-#{nome}", "w"
  Bixo.find(:all).select{|b| not b.sexo_id.nil?}.each do |bixo|
    f.puts "id: #{bixo.id}"
    f.puts "{"
    f.puts bixo.attributes.collect{|chave,valor| ":#{chave} => \"#{valor}\",\n"}
    f.puts ":modalidade_ids => ["
    f.puts bixo.modalidades.each {|m| f.puts "#{m.id}, "}
    f.puts "]"
    f.puts "}"
    f.puts "--------------------"
  end
  f.close
end
