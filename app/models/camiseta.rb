class Camiseta < ActiveRecord::Base
  has_many :bixos

  def to_label
    self.tamanho+" "+self.tipo
  end

end
