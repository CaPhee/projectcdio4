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

ActiveRecord::Schema.define(version: 20161010071937) do

  create_table "alert", id: :string, limit: 45, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "content", limit: 500
    t.string "title",   limit: 45
  end

  create_table "ckeditor_assets", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "data_file_name",               null: false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.integer  "assetable_id"
    t.string   "assetable_type",    limit: 30
    t.string   "type",              limit: 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.index ["assetable_type", "assetable_id"], name: "idx_ckeditor_assetable", using: :btree
    t.index ["assetable_type", "type", "assetable_id"], name: "idx_ckeditor_assetable_type", using: :btree
  end

  create_table "funtion", primary_key: ["funtion_id", "module_id"], force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "funtion_id", limit: 45, null: false
    t.string "name",       limit: 45
    t.string "module_id",  limit: 45, null: false
    t.index ["module_id"], name: "fk_funtion_module1_idx", using: :btree
  end

  create_table "group", primary_key: "group_id", id: :string, limit: 45, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "group_name", limit: 45, default: "Employee", null: false
  end

  create_table "migrations", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string  "migration", null: false
    t.integer "batch",     null: false
  end

  create_table "module", id: :string, limit: 45, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name", limit: 45
  end

  create_table "person", primary_key: "users_username", id: :string, limit: 45, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string  "name",     limit: 45
    t.date    "birthday"
    t.string  "address",  limit: 45
    t.integer "phone"
    t.boolean "sex",                 default: false
  end

  create_table "posts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "title"
    t.text     "content",    limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "users", primary_key: "username", id: :string, limit: 45, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "password", limit: 45, null: false
  end

  create_table "users_has_alert", primary_key: ["users_username", "_id"], force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "users_username", limit: 45, null: false
    t.string "_id",            limit: 45, null: false
    t.index ["_id"], name: "fk_users_has__1_idx", using: :btree
    t.index ["users_username"], name: "fk_users_has__users1_idx", using: :btree
  end

  create_table "users_has_group", primary_key: ["username", "group_id"], force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "username", limit: 45, null: false
    t.string "group_id", limit: 45, null: false
    t.index ["group_id"], name: "fk_users_has_group_group1_idx", using: :btree
    t.index ["username"], name: "fk_users_has_group_users_idx", using: :btree
  end

  create_table "users_has_group_has_funtion", primary_key: ["users_has_group_username", "users_has_group_group_id", "funtion_funtion_id"], force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "users_has_group_username", limit: 45, null: false
    t.string "users_has_group_group_id", limit: 45, null: false
    t.string "funtion_funtion_id",       limit: 45, null: false
    t.index ["funtion_funtion_id"], name: "fk_users_has_group_has_funtion_funtion1_idx", using: :btree
    t.index ["users_has_group_username", "users_has_group_group_id"], name: "fk_users_has_group_has_funtion_users_has_group1_idx", using: :btree
  end

  add_foreign_key "funtion", "module", name: "fk_funtion_module1"
  add_foreign_key "person", "users", column: "users_username", primary_key: "username", name: "fk_person_users1"
  add_foreign_key "users_has_alert", "alert", column: "_id", name: "fk_users_has__1"
  add_foreign_key "users_has_alert", "users", column: "users_username", primary_key: "username", name: "fk_users_has__users1"
  add_foreign_key "users_has_group", "group", primary_key: "group_id", name: "fk_users_has_group_group1"
  add_foreign_key "users_has_group", "users", column: "username", primary_key: "username", name: "fk_users_has_group_users"
  add_foreign_key "users_has_group_has_funtion", "funtion", column: "funtion_funtion_id", primary_key: "funtion_id", name: "fk_users_has_group_has_funtion_funtion1"
  add_foreign_key "users_has_group_has_funtion", "users_has_group", column: "users_has_group_group_id", primary_key: "group_id", name: "fk_users_has_group_has_funtion_users_has_group1"
  add_foreign_key "users_has_group_has_funtion", "users_has_group", column: "users_has_group_username", primary_key: "username", name: "fk_users_has_group_has_funtion_users_has_group1"
end
