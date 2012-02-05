def junta nomes
  nomes.each do  |nome|
    f = File.open "bixos-#{nome}", "r"
    linhas = f.readlines
    atributos = ""
    id=0
    linhas.each do |linha|
      if(linha[/\-\-\-\-\-\-+/])
        bixo = Bixo.find_by_id id
        if bixo.nil?
          Bixo.create! eval(atributos)
        else
          bixo.update_attributes(eval(atributos))
        end
        atributos = ""
      elsif linha =~ /id: (\d+)/
        id = $1      
      else
        atributos << linha
      end
    end
    f.close
  end
end
