class CreateCamisetas < ActiveRecord::Migration
  def self.up
    create_table :camisetas do |t|
      t.string :tamanho
      t.string :tipo

      t.timestamps
    end
  end

  def self.down
    drop_table :camisetas
  end
end
