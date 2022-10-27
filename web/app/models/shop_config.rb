# frozen_string_literal: true

class ShopConfig < ApplicationRecord
  belongs_to :shop

  def with_defaults
    shop_config = dup

    shop_config.pdp_description_label = 'Description' if shop_config.pdp_description_label.nil?
    shop_config.pdp_product_specs_label = 'Production Specifications' if shop_config.pdp_product_specs_label.nil?
    shop_config.pdp_buyers_guide_label = 'Buyers Guide' if shop_config.pdp_buyers_guide_label.nil?
    shop_config.pdp_interchange_part_numbers_label = 'Interchange Part Numbers' if shop_config.pdp_interchange_part_numbers_label.nil?
    shop_config.include_interchange_part_numbers = false if shop_config.include_interchange_part_numbers.nil?
    shop_config.include_admin_flag = false if shop_config.include_admin_flag.nil?
    shop_config.part_brand_label = 'Brand' if shop_config.part_brand_label.nil?
    shop_config.database_url = 'www.showmethepartsdb2.com/bin/ShowMeconnect.exe' if shop_config.database_url.nil?
    shop_config.license_key = 'Metrix2182' if shop_config.license_key.nil?
    shop_config.part_type_enabled = false if shop_config.part_type_enabled.nil?
    shop_config.engine_enabled = false if shop_config.engine_enabled.nil?
    shop_config.clear_button_enabled = false if shop_config.clear_button_enabled.nil?
    shop_config.tab_sort_order = 0 if shop_config.tab_sort_order.nil?

    shop_config
  end
end
