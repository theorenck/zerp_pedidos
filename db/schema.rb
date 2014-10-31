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

ActiveRecord::Schema.define(version: 20141031122538) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clientes", force: true do |t|
    t.string   "situacao"
    t.string   "observacoes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contatos", force: true do |t|
    t.string   "descricao"
    t.string   "informacao"
    t.string   "observacoes"
    t.integer  "pessoa_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "contatos", ["pessoa_id"], name: "index_contatos_on_pessoa_id", using: :btree

  create_table "enderecos", force: true do |t|
    t.integer  "pessoa_id"
    t.string   "bairro"
    t.string   "cep"
    t.string   "cidade"
    t.string   "codigo_ibge"
    t.string   "complemento"
    t.string   "logradouro"
    t.string   "numero"
    t.string   "pais"
    t.string   "uf"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "enderecos", ["pessoa_id"], name: "index_enderecos_on_pessoa_id", using: :btree

  create_table "fabricantes", force: true do |t|
    t.string   "descricao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fornecedores", force: true do |t|
    t.string   "situacao"
    t.string   "observacoes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "marcas", force: true do |t|
    t.integer  "fabriacnte_id"
    t.string   "descricao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "marcas", ["fabriacnte_id"], name: "index_marcas_on_fabriacnte_id", using: :btree

  create_table "modelos", force: true do |t|
    t.string   "codigo"
    t.string   "descricao"
    t.integer  "marca_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "modelos", ["marca_id"], name: "index_modelos_on_marca_id", using: :btree

  create_table "pedido_items", force: true do |t|
    t.decimal  "quantidade"
    t.decimal  "percentual_desconto"
    t.decimal  "valor_desconto"
    t.decimal  "valor_unitario"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pedidos", force: true do |t|
    t.integer  "numero"
    t.datetime "emissao"
    t.datetime "entrega"
    t.string   "situacao"
    t.string   "observacoes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pessoas", force: true do |t|
    t.string   "type"
    t.string   "cpf_cnpj",            limit: 14
    t.string   "razao_social"
    t.string   "nome_fantasia"
    t.string   "inscricao_estadual"
    t.string   "inscricao_municipal"
    t.string   "suframa"
    t.string   "nome"
    t.date     "data_nascimento"
    t.string   "naturalidade"
    t.date     "rg_emissao"
    t.string   "rg_numero"
    t.string   "orgao"
    t.string   "sexo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "produtos", force: true do |t|
    t.string   "codigo"
    t.string   "codigo_barras"
    t.string   "descricao"
    t.decimal  "preco_custo"
    t.decimal  "preco_venda"
    t.string   "situacao"
    t.string   "observacoes"
    t.integer  "tipo_produto_id"
    t.integer  "marca_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipos_produto", force: true do |t|
    t.string   "descricao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "unidades_medida", force: true do |t|
    t.string   "abreviatura"
    t.string   "descricao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vendedores", force: true do |t|
    t.decimal  "percentual_comissao"
    t.string   "situacao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
