class AddEndereco < ActiveRecord::Migration
  def self.up
    add_column :bixos , :endereco , :string
  end

  def self.down
    remove_column :bixos, :endereco
  end
end
