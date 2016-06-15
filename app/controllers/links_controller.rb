class LinksController < ApplicationController

	def index
		@links = Link.all.order("created_at DESC")
	end

	def new
		@link = Link.new
	end

	def create
		@link = Link.new(link_params)
		@link.save
	end

	def show
		@campaign = Campaign.new
		@link = Link.find(params[:id])
	end

	def destroy
		@link = Link.find(params[:id])

		@link.destroy
		redirect_to "/links"
	end
	
	private

	def link_params
		params.require(:link).permit(:title, :name, :description, :link)
	end

end
