class AddExistingSiteConfigurations < ActiveRecord::Migration[7.0]
  def change
    s = Shop.new
    s.shopify_domain = 'metrix-premium.myshopify.com'
    s.shopify_token = '0'
    s.save!

    sc = ShopConfig.new
    sc.shop_id = s.id
    sc.database_url = 'www.showmethepartsdb.com/bin/ShowMeconnect.exe'
    sc.license_key = 'Metrix2182'
    sc.clear_button_enabled = true
    sc.include_admin_flag = true

    sc.pdp_buyers_guide_label = 'Applications'
    sc.include_interchange_part_numbers = true
    sc.tab_sort_order = 1
    sc.save!

    s = Shop.new
    s.shopify_domain = 'under-car-experts-com.myshopify.com'
    s.shopify_token = '0'
    s.save!

    sc = ShopConfig.new
    sc.shop_id = s.id
    sc.license_key = 'UNDCREX1147SHPFY'
    sc.part_type_enabled = true
    sc.part_brand_label = 'Type'
    sc.engine_enabled = true
    sc.save!

    s = Shop.new
    s.shopify_domain = 'boldautoparts.myshopify.com'
    s.shopify_token = '0'
    s.save!

    sc = ShopConfig.new
    sc.shop_id = s.id
    sc.license_key = 'BOLD4WDAPI2182'
    sc.part_type_enabled = true
    sc.engine_enabled = true
    sc.save!
  end
end
