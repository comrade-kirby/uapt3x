# frozen_string_literal: true

class ToolkitAssetsController < ApplicationController
  protect_from_forgery except: %i[shop_config framework]

  def shop_config
    shop = Shop.find_by(shopify_domain: params[:store])

    @shop_config = shop.shop_config.with_defaults

    render layout: false, content_type: 'text/javascript'
  end

  def framework
    render layout: false, content_type: 'text/javascript'
  end

  private

  def toolkit_assets_params
    params.permit(:shop)
  end
end
