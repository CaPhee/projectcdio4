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

ActiveRecord::Schema.define(version: 20161020032156) do

<<<<<<< c1e55fd459cc728e71db92c4d580099d35948889
=======
  create_table "accounts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "username"
    t.string   "password"
    t.string   "user_token"
    t.integer  "id_role"
    t.boolean  "isactive"
    t.boolean  "islock"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "fk_rails_b1e30bebc8", using: :btree
  end

  create_table "areas", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

>>>>>>> create database
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

<<<<<<< c1e55fd459cc728e71db92c4d580099d35948889
=======
  create_table "comments", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text     "comment",         limit: 65535
    t.integer  "like"
    t.text     "like_details",    limit: 65535
    t.integer  "dislike"
    t.text     "dislike_details", limit: 65535
    t.integer  "account_id"
    t.integer  "post_id"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.index ["account_id"], name: "fk_rails_cf9764b6b1", using: :btree
    t.index ["post_id"], name: "fk_rails_2fd19c0db7", using: :btree
  end

  create_table "follows", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "account_id"
    t.integer  "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "fk_rails_f59577ad9d", using: :btree
    t.index ["post_id"], name: "fk_rails_34a514d6fc", using: :btree
  end

  create_table "locations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.text     "address",     limit: 65535
    t.text     "description", limit: 65535
    t.boolean  "isowner"
    t.integer  "area_id"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

>>>>>>> create database
  create_table "posts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "title"
    t.text     "content",         limit: 65535
    t.integer  "views"
    t.integer  "like"
    t.text     "like_details",    limit: 65535
    t.integer  "dislike"
    t.text     "dislike_details", limit: 65535
    t.integer  "account_id"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.index ["account_id"], name: "fk_rails_ff02f0408e", using: :btree
  end

<<<<<<< c1e55fd459cc728e71db92c4d580099d35948889
=======
  create_table "reports", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "type"
    t.text     "description",      limit: 65535
    t.boolean  "ischeck"
    t.boolean  "iscritical"
    t.integer  "account_report"
    t.integer  "account_reported"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.index ["account_report"], name: "fk_rails_aa807ccd81", using: :btree
    t.index ["account_reported"], name: "fk_rails_e45e7807ad", using: :btree
  end

  create_table "reviews", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text     "review",     limit: 65535
    t.float    "rate",       limit: 24
    t.integer  "post_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.index ["post_id"], name: "fk_rails_a4cffdde38", using: :btree
  end

  create_table "services", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.integer  "location_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["location_id"], name: "fk_rails_7068b89131", using: :btree
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.date     "birthday"
    t.boolean  "sex"
    t.text     "address",    limit: 65535
    t.string   "phone"
    t.string   "email"
    t.integer  "account_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_foreign_key "accounts", "users", on_delete: :cascade
  add_foreign_key "comments", "accounts", on_delete: :cascade
  add_foreign_key "comments", "posts", on_delete: :cascade
  add_foreign_key "follows", "accounts", on_delete: :cascade
  add_foreign_key "follows", "posts", on_delete: :cascade
  add_foreign_key "posts", "accounts", on_delete: :cascade
  add_foreign_key "reports", "accounts", column: "account_report", on_delete: :cascade
  add_foreign_key "reports", "accounts", column: "account_reported", on_delete: :cascade
  add_foreign_key "reviews", "posts", on_delete: :cascade
  add_foreign_key "services", "locations", on_delete: :cascade
>>>>>>> create database
end
