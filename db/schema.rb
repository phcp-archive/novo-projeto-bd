# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140206055048) do

  create_table "compra_materias_primas", force: true do |t|
    t.datetime "data"
    t.integer  "status"
    t.float    "pagamento"
    t.integer  "fornecedor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "compra_materias_primas", ["fornecedor_id"], name: "index_compra_materias_primas_on_fornecedor_id"

  create_table "compra_produtos", force: true do |t|
    t.datetime "data"
    t.integer  "status"
    t.float    "pagamento"
    t.integer  "fornecedor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "compra_produtos", ["fornecedor_id"], name: "index_compra_produtos_on_fornecedor_id"

  create_table "enderecos", force: true do |t|
    t.string   "bairro"
    t.string   "cep"
    t.string   "cidade"
    t.string   "logradouro"
    t.string   "complemento"
    t.string   "estado"
    t.string   "numero"
    t.integer  "enderecavel_id"
    t.string   "enderecavel_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fornecedores", force: true do |t|
    t.string   "nome"
    t.string   "cnpj"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "funcionarios", force: true do |t|
    t.string   "nome"
    t.string   "cadastro"
    t.string   "email"
    t.boolean  "juridico"
    t.string   "cargo"
    t.string   "senha"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "materia_compradas", force: true do |t|
    t.integer  "materia_prima_id"
    t.integer  "compra_materia_prima_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "materia_prima_compradas", force: true do |t|
    t.integer  "materia_prima_id"
    t.integer  "compra_materia_prima_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "materia_utilizadas", force: true do |t|
    t.integer  "materia_prima_id"
    t.integer  "producao_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "materias_primas", force: true do |t|
    t.string   "nome"
    t.string   "codigo"
    t.text     "descricao"
    t.integer  "quantidade"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pessoas", force: true do |t|
    t.string   "nome"
    t.string   "cadastro"
    t.string   "email"
    t.boolean  "juridico"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "producoes", force: true do |t|
    t.datetime "data"
    t.integer  "quantidade"
    t.integer  "produto_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "producoes", ["produto_id"], name: "index_producoes_on_produto_id"

  create_table "produto_comprados", force: true do |t|
    t.integer  "produto_id"
    t.integer  "compra_produto_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "produto_solicitados", force: true do |t|
    t.integer  "produto_id"
    t.integer  "solicitacao_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "produtos", force: true do |t|
    t.string   "nome"
    t.float    "preco"
    t.string   "codigo"
    t.text     "descricao"
    t.integer  "quantidade"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "solicitacoes", force: true do |t|
    t.integer  "status"
    t.datetime "data"
    t.float    "desconto"
    t.float    "pagamento"
    t.integer  "pessoa_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "solicitacoes", ["pessoa_id"], name: "index_solicitacoes_on_pessoa_id"

  create_table "telefones", force: true do |t|
    t.string   "ddd"
    t.string   "numero"
    t.integer  "telefonavel_id"
    t.string   "telefonavel_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
