class CreateBixos < ActiveRecord::Migration
  def self.up
    create_table :bixos do |t|
      t.string :nome
      t.string :email
      t.string :cel
      t.string :tel
      t.integer :curso_id
      t.integer :sexo_id
      t.integer :camiseta_id
      t.integer :cor_id

      t.timestamps
    end
  end

  def self.down
    drop_table :bixos
  end
end
