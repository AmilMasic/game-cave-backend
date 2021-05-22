class Api::V1::GamesController < ApplicationController

  before_action :set_publisher

  def index
    @games = Game.all
    render json: @games
  end

  def create

    # @game = Game.new(game_params)
    @game = @publisher.games.new(game_params)
    if @game.save
      render json: @publisher
    else
      render json: { error: 'Error creating game.'}
    end
  end

  def show
    @game = Game.find(params[:id])
    render json: @game
  end

  def destroy
    @game = Game.find(params[:id])
    @publisher = Publisher.find(@game.publisher_id)
    @game.destroy
    render json: @publisher
  end

  private

  def set_publisher
    @publisher = Publisher.find(params[:publisher_id])
  end

  def game_params
    params.require(:game).permit(:title, :release_date, :completed, :genre, :description, :platform, :publisher_id)
  end

end
