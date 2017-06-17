#
# about_controller.rb
#
class AboutController < ApplicationController
  def index
    @author = Settings.author
  end
end
