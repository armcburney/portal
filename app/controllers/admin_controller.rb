require 'json'

#
# admin_controller.rb
#
class AdminController < ApplicationController
  def index() end

  def settings
    @settings = Setting.get_all
  end

  # Returns JSON representation of custom settings
  def admin_settings
    render json: Setting.get_all
  end

  # Updates Settings cache for main font type
  def update_font_settings
    Setting['font'] = params['/admin/settings']['font']
  end

  # Updates Settings cache for typography related settings
  def update_typography_settings
    params['/admin/settings'].each do |key, value|
      Setting["typography.#{key}"] = value unless value.blank?
    end
  end
end
