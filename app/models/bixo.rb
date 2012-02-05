class Bixo < ActiveRecord::Base
  belongs_to :sexo
  belongs_to :cor
  belongs_to :curso
  belongs_to :camiseta
  has_and_belongs_to_many :modalidades


  validates_presence_of :email
  validates_presence_of :sexo_id
  validates_presence_of :camiseta_id
  validates_presence_of :cor_id
  validates_presence_of :endereco

  validates_format_of :cel,
                      :with => /^((0)?\d\d(\s)?)?\d{4}(\-)?\d{4}$/,
                      :message => " só pode conter números no formato YY XXXX-XXXX",
                      :allow_nil => true,
                      :allow_blank => true

  validates_format_of :tel,
                      :with => /^((0)?\d\d(\s)?)?\d{4}(\-)?\d{4}$/,
                      :message => " só pode conter números no formato YY XXXX-XXXX",
                      :allow_nil => true,
                      :allow_blank => true


end
