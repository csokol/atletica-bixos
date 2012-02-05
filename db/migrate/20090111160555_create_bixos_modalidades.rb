class CreateBixosModalidades < ActiveRecord::Migration
  def self.up
    create_table :bixos_modalidades, :id => false do |t|
      t.integer :bixo_id
      t.integer :modalidade_id
    end
  end

  def self.down
    drop_table :bixos_modalidades
  end
end
