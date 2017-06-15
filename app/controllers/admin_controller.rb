require 'json'

#
# admin_controller.rb
#
class AdminController < ApplicationController
  def index() end

  def settings
    @settings = Setting.get_all
  end

  def admin_settings
    render json: Setting.get_all
  end
end
