class AdminController < ApplicationController
  def index
  end

  def settings
    @settings = Setting.get_all
  end
end
