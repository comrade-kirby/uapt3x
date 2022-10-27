class AddRemainingShopConfigFields < ActiveRecord::Migration[7.0]
  def change
    add_column :shop_configs, :database_url, :string, null: true
    add_column :shop_configs, :license_key, :string, null: true
    add_column :shop_configs, :part_type_enabled, :boolean, null: true
    add_column :shop_configs, :engine_enabled, :boolean, null: true
    add_column :shop_configs, :clear_button_enabled, :boolean, null: true
    add_column :shop_configs, :year_placeholder_text, :string, null: true
    add_column :shop_configs, :make_placeholder_text, :string, null: true
    add_column :shop_configs, :model_placeholder_text, :string, null: true
    add_column :shop_configs, :product_placeholder_text, :string, null: true
    add_column :shop_configs, :engine_placeholder_text, :string, null: true
    add_column :shop_configs, :part_brand_label, :string, null: true
    add_column :shop_configs, :include_admin_flag, :boolean, null: true

    add_column :shop_configs, :pdp_interchange_part_numbers_label, :string, null: true
    add_column :shop_configs, :include_interchange_part_numbers, :boolean, null: true
    add_column :shop_configs, :tab_sort_order, :integer, null: true
  end
end
