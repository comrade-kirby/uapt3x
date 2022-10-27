# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_10_10_012321) do
  create_table "shop_configs", force: :cascade do |t|
    t.string "pdp_description_label"
    t.string "pdp_product_specs_label"
    t.string "pdp_buyers_guide_label"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "shop_id"
    t.string "database_url"
    t.string "license_key"
    t.boolean "part_type_enabled"
    t.boolean "engine_enabled"
    t.boolean "clear_button_enabled"
    t.string "year_placeholder_text"
    t.string "make_placeholder_text"
    t.string "model_placeholder_text"
    t.string "product_placeholder_text"
    t.string "engine_placeholder_text"
    t.string "part_brand_label"
    t.boolean "include_admin_flag"
    t.string "pdp_interchange_part_numbers_label"
    t.boolean "include_interchange_part_numbers"
    t.integer "tab_sort_order"
    t.index ["shop_id"], name: "index_shop_configs_on_shop_id"
  end

  create_table "shops", force: :cascade do |t|
    t.string "shopify_domain", null: false
    t.string "shopify_token", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "access_scopes"
    t.index ["shopify_domain"], name: "index_shops_on_shopify_domain", unique: true
  end

  add_foreign_key "shop_configs", "shops"
end
