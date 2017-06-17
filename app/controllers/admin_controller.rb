require 'json'

#
# admin_controller.rb
#
class AdminController < ApplicationController
  def index() end

  def settings
    # Reload settings on page refresh
    Settings.reload!

    @font       = Settings.font
    @typography = Settings.typography
  end

  # Returns JSON representation of custom settings
  def admin_settings
    render json: Settings.all
  end

  # Updates Settings cache for main font type
  def update_font_settings() end

  # Updates Settings cache for typography related settings
  def update_typography_settings
    params['/admin/settings'].each do |key, value|
      Settings.update_setting("admin.typography.#{key}", value)
    end

    Settings.save!
  end
end
