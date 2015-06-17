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

ActiveRecord::Schema.define(version: 20150617104416) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "banques", force: :cascade do |t|
    t.string   "nom"
    t.string   "compte"
    t.decimal  "solde"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string   "num"
    t.string   "codeclient"
    t.string   "nom"
    t.string   "prenom"
    t.string   "sexe"
    t.date     "data_nai"
    t.string   "lieu_nai"
    t.string   "nationalite"
    t.string   "profession"
    t.string   "phone"
    t.text     "address"
    t.string   "email"
    t.string   "type_cl",             limit: 1,  default: "o"
    t.decimal  "solde",                          default: 0.0
    t.decimal  "points",                         default: 0.0
    t.string   "etat",                limit: 10, default: "a"
    t.date     "date_ins"
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  add_index "clients", ["codeclient"], name: "index_clients_on_codeclient", unique: true, using: :btree

  create_table "folder_attachments", force: :cascade do |t|
    t.integer  "owner_id"
    t.integer  "client_id"
    t.string   "name_file"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "folder_attachments", ["client_id"], name: "index_folder_attachments_on_client_id", using: :btree
  add_index "folder_attachments", ["owner_id"], name: "index_folder_attachments_on_owner_id", using: :btree

  create_table "modalitepaiements", force: :cascade do |t|
    t.string   "code"
    t.string   "mode"
    t.string   "description"
    t.decimal  "remise",      default: 0.0
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "owners", force: :cascade do |t|
    t.string   "num"
    t.string   "codeowner"
    t.string   "nom"
    t.string   "prenom"
    t.string   "sexe"
    t.date     "date_nai"
    t.string   "lieu_nai"
    t.string   "nationalite"
    t.string   "profession"
    t.string   "phone"
    t.text     "address"
    t.string   "email"
    t.string   "type_ow",             limit: 1,  default: "o"
    t.string   "etat",                limit: 10, default: "a"
    t.date     "date_ins"
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  add_index "owners", ["codeowner"], name: "index_owners_on_codeowner", unique: true, using: :btree

  create_table "paiements", force: :cascade do |t|
    t.string   "num",           limit: 10
    t.string   "num_paie",      limit: 30
    t.integer  "owner_id",                 default: -1
    t.integer  "client_id",                default: -1
    t.integer  "banque_id",                default: -1
    t.string   "condition_reg",            default: "Espèces"
    t.string   "type_paiement"
    t.string   "motif"
    t.decimal  "debit",                    default: 0.0
    t.decimal  "credit",                   default: 0.0
    t.datetime "datepaiement"
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
  end

  add_index "paiements", ["banque_id"], name: "index_paiements_on_banque_id", using: :btree
  add_index "paiements", ["client_id"], name: "index_paiements_on_client_id", using: :btree
  add_index "paiements", ["owner_id"], name: "index_paiements_on_owner_id", using: :btree

  create_table "tbanques", force: :cascade do |t|
    t.integer  "banque_id"
    t.string   "type_tb"
    t.decimal  "debit",      default: 0.0
    t.decimal  "credit",     default: 0.0
    t.string   "porteur"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "tbanques", ["banque_id"], name: "index_tbanques_on_banque_id", using: :btree

  add_foreign_key "folder_attachments", "clients"
  add_foreign_key "folder_attachments", "owners"
  add_foreign_key "paiements", "banques"
  add_foreign_key "paiements", "clients"
  add_foreign_key "paiements", "owners"
  add_foreign_key "tbanques", "banques"
end
