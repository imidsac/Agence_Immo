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

ActiveRecord::Schema.define(version: 20150620144945) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "banques", force: :cascade do |t|
    t.string   "nom"
    t.string   "compte"
    t.decimal  "solde"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "buildings", force: :cascade do |t|
    t.integer  "owner_id"
    t.string   "name"
    t.string   "type_build"
    t.string   "niveau"
    t.string   "door"
    t.string   "street"
    t.string   "quartier"
    t.string   "ville"
    t.boolean  "unique",              default: false
    t.decimal  "previen",             default: 0.0
    t.decimal  "pordinaire",          default: 0.0
    t.decimal  "pong",                default: 0.0
    t.decimal  "pgov",                default: 0.0
    t.decimal  "pourcent_pordinaire", default: 0.0
    t.decimal  "pourcent_pong",       default: 0.0
    t.decimal  "pourcent_pgov",       default: 0.0
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "buildings", ["owner_id"], name: "index_buildings_on_owner_id", using: :btree

  create_table "categoriedeps", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "chambers", force: :cascade do |t|
    t.integer  "building_id"
    t.string   "name"
    t.string   "type_chamber",        default: "Appartement"
    t.string   "niveau"
    t.decimal  "previen",             default: 0.0
    t.decimal  "pordinaire",          default: 0.0
    t.decimal  "pong",                default: 0.0
    t.decimal  "pgov",                default: 0.0
    t.decimal  "pourcent_pordinaire", default: 0.0
    t.decimal  "pourcent_pong",       default: 0.0
    t.decimal  "pourcent_pgov",       default: 0.0
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
  end

  add_index "chambers", ["building_id"], name: "index_chambers_on_building_id", using: :btree

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

  create_table "delais", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "nb_day"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "depenses", force: :cascade do |t|
    t.string   "description"
    t.integer  "categoriedep_id"
    t.decimal  "montant"
    t.string   "etat"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "depenses", ["categoriedep_id"], name: "index_depenses_on_categoriedep_id", using: :btree

  create_table "folder_attachments", force: :cascade do |t|
    t.integer  "owner_id"
    t.integer  "client_id"
    t.string   "name_file"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "staff_id"
    t.integer  "building_id"
    t.integer  "chamber_id"
  end

  add_index "folder_attachments", ["building_id"], name: "index_folder_attachments_on_building_id", using: :btree
  add_index "folder_attachments", ["chamber_id"], name: "index_folder_attachments_on_chamber_id", using: :btree
  add_index "folder_attachments", ["client_id"], name: "index_folder_attachments_on_client_id", using: :btree
  add_index "folder_attachments", ["owner_id"], name: "index_folder_attachments_on_owner_id", using: :btree
  add_index "folder_attachments", ["staff_id"], name: "index_folder_attachments_on_staff_id", using: :btree

  create_table "modalitepaiements", force: :cascade do |t|
    t.string   "code"
    t.string   "mode"
    t.string   "description"
    t.decimal  "remise",      default: 0.0
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "occupations", force: :cascade do |t|
    t.integer  "client_id"
    t.integer  "chamber_id"
    t.string   "etat"
    t.date     "date_occupation"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "occupations", ["chamber_id"], name: "index_occupations_on_chamber_id", using: :btree
  add_index "occupations", ["client_id"], name: "index_occupations_on_client_id", using: :btree

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

  create_table "staffs", force: :cascade do |t|
    t.string   "first_name"
    t.string   "gender"
    t.date     "date_nai"
    t.string   "lieu_nai"
    t.string   "nationality"
    t.string   "phone"
    t.string   "email"
    t.text     "address"
    t.string   "post"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "statistic_generals", force: :cascade do |t|
    t.integer  "year"
    t.integer  "month"
    t.decimal  "expense"
    t.decimal  "recipe"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "statistic_owners", force: :cascade do |t|
    t.integer  "year"
    t.integer  "month"
    t.decimal  "provide"
    t.decimal  "pay"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

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

  add_foreign_key "buildings", "owners"
  add_foreign_key "chambers", "buildings"
  add_foreign_key "depenses", "categoriedeps"
  add_foreign_key "folder_attachments", "buildings"
  add_foreign_key "folder_attachments", "chambers"
  add_foreign_key "folder_attachments", "clients"
  add_foreign_key "folder_attachments", "owners"
  add_foreign_key "folder_attachments", "staffs"
  add_foreign_key "occupations", "chambers"
  add_foreign_key "occupations", "clients"
  add_foreign_key "paiements", "banques"
  add_foreign_key "paiements", "clients"
  add_foreign_key "paiements", "owners"
  add_foreign_key "tbanques", "banques"
end
