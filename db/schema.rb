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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110727210019) do

  create_table "cuisines", :force => true do |t|
    t.integer  "restaurant_id"
    t.integer  "food_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "food_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "restaurants", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "address1"
    t.string   "address2"
    t.string   "suburb"
    t.string   "postcode"
    t.boolean  "open_lunch"
    t.boolean  "open_dinner"
    t.boolean  "open_breakfast"
    t.boolean  "takeaway"
    t.boolean  "deliver"
    t.boolean  "eatin"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
