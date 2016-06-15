class CampaignsController < ApplicationController

	def index
		@campaigns = Campaign.all
	end

	def new
		@campaign = Campaign.new
	end

	def create
		@link = Link.find(params[:link_id])
		@link.destroy
		
		@campaign = Campaign.new(campaign_params)
		@campaign.save
	end

	def show
		@campaign = Campaign.find(params[:id])
	end

	def destroy
		@campaign = Campaign.find(params[:id])
		@campaign.destroy
		redirect_to "/campaigns"
	end

	private

	def campaign_params
		params.require(:campaign).permit(:title, :name, :link, :description, :date, :owner)
	end

end
