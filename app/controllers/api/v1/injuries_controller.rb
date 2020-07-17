class Api::V1::InjuriesController < ApplicationController
  def index
    injuries = Injury.all
    render json: injuries
  end

  def show
    injury = Injury.find(params[:id])
    render json: {injury: InjurySerializer.new(injury)}
  end

  def create
    injury = Injury.create(injury_params)
    if injury.valid?
      render json: { injury: InjurySerializer.new(injury) }, status: :created
    else
      render json: {errors: injury.errors.full_messages}
    end
  end

  def update
    injury = Injury.find(params[:id])
    injury.update(injury_params)
    if injury.valid?
      render json: {injury: InjurySerializer.new(injury)}
    else
      render json: {errors: injury.errors.full_messages}
    end
  end

  def destroy
    injury = Injury.find(params[:id])
    injury.destroy
    render json: {message: "injury Deleted"}, status: :ok
  end

  private

  def injury_params
    params.require(:injury).permit(:site, :description, :severity, :date, :athlete_id, :team_id)
  end
end
