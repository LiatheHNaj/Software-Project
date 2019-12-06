# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_12_02_202139) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "characters", force: :cascade do |t|
    t.string "character_class"
    t.string "name"
    t.string "race"
    t.string "personality_traits"
    t.string "ideals"
    t.string "bonds"
    t.string "flaws"
    t.boolean "is_spellcaster"
    t.string "spell"
    t.integer "age"
    t.string "sex"
    t.string "height"
    t.string "hair_color"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_characters_on_user_id"
  end

  create_table "stats", force: :cascade do |t|
    t.integer "level"
    t.integer "strength"
    t.integer "strength_mod"
    t.integer "dexterity"
    t.integer "dexterity_mod"
    t.integer "constitution"
    t.integer "constitution_mod"
    t.integer "intelligence"
    t.integer "intelligence_mod"
    t.integer "wisdom"
    t.integer "wisdom_mod"
    t.integer "charisma"
    t.integer "charisma_mod"
    t.integer "initiative_bonus"
    t.integer "proficiency_bonus"
    t.integer "hitpoints"
    t.integer "speed"
    t.integer "passive_perception"
    t.integer "armor_class"
    t.string "hit_dice"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "character_id"
    t.index ["character_id"], name: "index_stats_on_character_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "characters", "users"
  add_foreign_key "stats", "characters"
end
