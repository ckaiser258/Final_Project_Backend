class Api::V1::TeamsController < ApplicationController

  def index
    teams = Team.all
    render json: teams
  end

  def show
    team = Team.find(params[:id])
    render json: {team: TeamSerializer.new(team)}
  end

  def create
    team = Team.create(team_params)
    if team.valid?
      render json: { team: TeamSerializer.new(team) }, status: :created
    else
      render json: {errors: team.errors.full_messages}
    end
  end

  def update
    team = Team.find(params[:id])
    team.update(team_params)
    if team.valid?
      render json: {team: TeamSerializer.new(team)}
    else
      render json: {errors: team.errors.full_messages}
    end
  end

  def destroy
    team = Team.find(params[:id])
    team.injuries.destroy_all
    team.stats.destroy_all
    team.athletes.destroy_all
    team.destroy
    render json: {message: "Team Deleted"}, status: :ok
  end

  private

  def team_params
    params.require(:team).permit(:name, :logo, :user_id)
  end

end
