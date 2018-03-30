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

ActiveRecord::Schema.define(version: 20180329124000) do

  create_table "answer_contents", force: :cascade do |t|
    t.string "value"
    t.integer "answer_id"
    t.integer "form_item_id"
    t.integer "item_option_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["answer_id"], name: "index_answer_contents_on_answer_id"
    t.index ["form_item_id"], name: "index_answer_contents_on_form_item_id"
    t.index ["item_option_id"], name: "index_answer_contents_on_item_option_id"
  end

  create_table "answers", force: :cascade do |t|
    t.string "name"
    t.integer "form_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["form_id"], name: "index_answers_on_form_id"
  end

  create_table "form_items", force: :cascade do |t|
    t.string "name"
    t.string "field"
    t.boolean "required"
    t.integer "maxlength"
    t.integer "minlength"
    t.integer "form_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["form_id"], name: "index_form_items_on_form_id"
  end

  create_table "forms", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "item_options", force: :cascade do |t|
    t.string "name"
    t.string "value"
    t.integer "form_item_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["form_item_id"], name: "index_item_options_on_form_item_id"
  end

end
