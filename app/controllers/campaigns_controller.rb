class CampaignsController < ApplicationController

	respond_to :json

	def index
		@campaigns = Campaign.all.order("created_at DESC")

		if user_signed_in?

		else
			redirect_to "/users/sign_in"
		end
		
	end

	def new
		@campaign = Campaign.new
	end

	def create
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
