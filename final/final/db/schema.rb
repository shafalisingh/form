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

ActiveRecord::Schema.define(version: 20171226222625) do

  create_table "attachments", force: :cascade do |t|
    t.string "attachment_type"
    t.string "attachment_name"
    t.integer "priority"
    t.integer "scrapy_config_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["scrapy_config_id"], name: "index_attachments_on_scrapy_config_id"
  end

  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.string "symbol"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "scrapy_configs", force: :cascade do |t|
    t.integer "client_id"
    t.string "tgm_assigned_mailbox"
    t.text "approved_senders"
    t.text "approved_mail_subjects"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
