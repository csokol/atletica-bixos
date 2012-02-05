class CreateSexos < ActiveRecord::Migration
  def self.up
    create_table :sexos do |t|
      t.string :tipo

      t.timestamps
    end
  end

  def self.down
    drop_table :sexos
  end
end
