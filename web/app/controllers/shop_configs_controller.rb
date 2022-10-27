# frozen_string_literal: true

class ShopConfigsController < AuthenticatedController
  def index
    shop = Shop.find_by(shopify_domain: @current_shopify_session.shop)
    render json: shop.shop_config || ShopConfig.new(shop_id: shop.id)
  end

  def update
    shop = Shop.find_by(shopify_domain: @current_shopify_session.shop)
    shop_config = shop.shop_config || ShopConfig.new(shop_id: shop.id)

    shop_config.update(shop_config_params)
    success = true
    error = nil
    status_code = 200
  rescue => e
    success = false
    error = e.message
    status_code = e.is_a?(ShopifyAPI::Errors::HttpResponseError) ? e.code : 500

    logger.info("Failed to update shop_config: #{error}")
  ensure
    render(json: { success: success, error: error }, status: status_code)
  end

  private

  def shop_config_params
    params.require(:shop_config).permit(:pdp_description_label, :pdp_product_specs_label, :pdp_buyers_guide_label)
  end
end
