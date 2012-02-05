class EmailsController < ApplicationController

  def index
    @bixos = Modalidade.find_by_nome "Judo"
    @bixos = @bixos[0].bixos
    puts @bixos.collect{|b|b.nome}

    respond_to do |format|
      format.html
    end
  end

end
