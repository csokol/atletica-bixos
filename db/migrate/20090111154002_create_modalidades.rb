class CreateModalidades < ActiveRecord::Migration
  def self.up
    create_table :modalidades do |t|
      t.string :nome
      t.integer :sexo #0=>mista 1=>masc 2=>fem

      t.timestamps
    end
  end

  def self.down
    drop_table :modalidades
  end
end
