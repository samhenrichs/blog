class PagesController < ApplicationController
  
  def home
  	redirect_to "/links"
  end

  def admin
  	current_user.update_attribute :admin, true
  end

end
