# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20090205213748) do

  create_table "bixos", :force => true do |t|
    t.string   "nome"
    t.string   "email"
    t.string   "cel"
    t.string   "tel"
    t.integer  "curso_id"
    t.integer  "sexo_id"
    t.integer  "camiseta_id"
    t.integer  "cor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "endereco"
  end

  create_table "bixos_modalidades", :id => false, :force => true do |t|
    t.integer "bixo_id"
    t.integer "modalidade_id"
  end

  create_table "camisetas", :force => true do |t|
    t.string   "tamanho"
    t.string   "tipo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cors", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cursos", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "modalidades", :force => true do |t|
    t.string   "nome"
    t.integer  "sexo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sexos", :force => true do |t|
    t.string   "tipo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
