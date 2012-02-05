class CreateCors < ActiveRecord::Migration
  def self.up
    create_table :cors do |t|
      t.string :nome

      t.timestamps
    end
  end

  def self.down
    drop_table :cors
  end
end
