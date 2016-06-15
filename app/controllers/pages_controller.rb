class PagesController < ApplicationController
  
  def home
  	redirect_to "/links"
  end
end
