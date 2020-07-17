class Api::V1::StatsController < ApplicationController

  def index
    stats = Stat.all
    render json: stats
  end

  def show
    stat = Stat.find(params[:id])
    render json: {stat: StatSerializer.new(stat)}
  end

  def create
    stat = Stat.create(stat_params)
    if stat.valid?
      render json: { stat: StatSerializer.new(stat) }, status: :created
    else
      render json: {errors: stat.errors.full_messages}
    end
  end

  def update
    stat = Stat.find(params[:id])
    stat.update(stat_params)
    if stat.valid?
      render json: {stat: StatSerializer.new(stat)}
    else
      render json: {errors: stat.errors.full_messages}
    end
  end

  def destroy
    stat = Stat.find(params[:id])
    stat.destroy
    render json: {message: "Stat Deleted"}, status: :ok
  end

  private

  def stat_params
    params.require(:stat).permit(:test_name, :result, :date, :athlete_id, :team_id)
  end
end
