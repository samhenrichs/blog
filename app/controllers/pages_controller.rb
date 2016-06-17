class PagesController < ApplicationController
  
  def home
  	
  end

  def admin
  	current_user.update_attribute :admin, true
  end

end
