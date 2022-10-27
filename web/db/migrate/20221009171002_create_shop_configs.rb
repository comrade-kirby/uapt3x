class CreateShopConfigs < ActiveRecord::Migration[7.0]
  def change
    create_table :shop_configs do |t|
      t.string :pdp_description_label
      t.string :pdp_product_specs_label
      t.string :pdp_buyers_guide_label

      t.timestamps
    end
    add_reference :shop_configs, :shop, foreign_key: true
  end
end
