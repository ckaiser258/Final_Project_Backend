class Api::V1::AthletesController < ApplicationController

  def index
    athletes = Athlete.all
    render json: athletes
  end

  def show
    athlete = Athlete.find(params[:id])
    render json: {athlete: AthleteSerializer.new(athlete)}
  end

  def create
    athlete = Athlete.create(athlete_params)
    if athlete.valid?
      render json: { athlete: AthleteSerializer.new(athlete) }, status: :created
    else
      render json: {errors: athlete.errors.full_messages}
    end
  end

  def update
    athlete = Athlete.find(params[:id])
    athlete.update(athlete_params)
    if athlete.valid?
      render json: {athlete: AthleteSerializer.new(athlete)}
    else
      render json: {errors: athlete.errors.full_messages}
    end
  end

  def destroy
    athlete = Athlete.find(params[:id])
    athlete.injuries.destroy_all
    athlete.stats.destroy_all
    athlete.destroy
    render json: {message: "Athlete Deleted"}, status: :ok
  end

  private

  def athlete_params
    params.require(:athlete).permit(:first_name, :last_name, :year, :image, :user_id, :team_id)
  end
end
