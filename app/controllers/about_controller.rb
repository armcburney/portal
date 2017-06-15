#
# application_controller.rb
#
class AboutController < ApplicationController
  def index
    @author = Setting.get_all[:author]
  end
end
