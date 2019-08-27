class HomepageController < ApplicationController
  def homepage; end

  def start
    User.all
  end

end
