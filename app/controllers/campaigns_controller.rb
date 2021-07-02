class CampaignsController < ApplicationController
include CurrentUserConcern

  def index
    @campaigns = Campaign.order(:title)
    render json: @campaigns
  end

  def create
    user_id = @current_user
    @campaign = Campaign.create!(campaign_params)

    if @campaign.save
      render json: {message: "success"}
    else 
      render json: campaign.errors
    end
  end

  def edit
    @campaign = Campaign.find(params[:id])
  end

  def update
    @campaign = Campaign.find(params[:id])

    if @campaign.update(campaign_params)
      redirect_to @campaign
    else
      render 'edit'
    end
  end

  def delete
    @campaign = Campaign.find(params[:id])
    @campaign.destroy
    render json: { message: 'Campaign deleted!' }
  end

  def show
    @campaigns = Campaign.find_by(user_id: params[:id])
    render json: @campaigns
  end

  private 
  def campaign_params
    params.require(:campaign).permit( :title, :party, :level, :c_notes, :dm_notes, :user_id)
  end 

end

