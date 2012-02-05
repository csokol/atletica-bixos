class Modalidade < ActiveRecord::Base
  has_and_belongs_to_many :bixos
end
