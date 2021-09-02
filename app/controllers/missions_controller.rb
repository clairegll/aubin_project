class MissionsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    if params[:user_id]
      @missions = current_user.missions
      if params[:query].present?
        sql_query = "title ILIKE :query OR summary ILIKE :query OR description ILIKE :query OR contract ILIKE :query OR field ILIKE :query OR reference ILIKE :query"
        @missions = Mission.where(sql_query, query: "%#{params[:query]}%")
      else
        @missions = Mission.all
      end
    else
      @missions = policy_scope(Mission).order(created_at: :desc)
      if params[:query].present?
        sql_query = "title ILIKE :query OR summary ILIKE :query OR description ILIKE :query OR contract ILIKE :query OR field ILIKE :query OR reference ILIKE :query"
        @missions = Mission.where(sql_query, query: "%#{params[:query]}%")
      else
        @missions = Mission.all
      end
    end
  end

  def show
    @mission = Mission.find(params[:id])
    authorize @mission
    @markers = [{
      lat: @mission.latitude,
      lng: @mission.longitude
    }]
  end

  def new
    @mission = Mission.new
    authorize @mission
  end

  def create
    @mission = Mission.new(mission_params)
    @mission.user = current_user
    authorize @mission
    if @mission.save
      redirect_to mission_path(@mission)
    else
      render :new
    end
  end

  def destroy
    @mission = Mission.find(params[:id])
    authorize @mission
    @mission.destroy
    redirect_to missions_path
  end


  private

  def mission_params
    params.require(:mission).permit(:title, :description, :location, :salary, :start_time, :end_time, :contract, :done, :summary, :profil, :reference, :field, :latitude, :longitude)
  end
end
