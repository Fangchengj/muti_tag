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

ActiveRecord::Schema.define(version: 20161013011708) do

  create_table "articles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.integer  "tag_one_id"
    t.integer  "tag_two_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tag_one_id"], name: "index_articles_on_tag_one_id", using: :btree
    t.index ["tag_two_id"], name: "index_articles_on_tag_two_id", using: :btree
  end

  create_table "tag_ones", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tag_twos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.integer  "tag_one_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tag_one_id"], name: "index_tag_twos_on_tag_one_id", using: :btree
  end

  add_foreign_key "articles", "tag_ones"
  add_foreign_key "articles", "tag_twos"
  add_foreign_key "tag_twos", "tag_ones"
end
