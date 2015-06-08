class GamesController < ApplicationController
  def index
    @games = Game.all
  end
  def new
    @game = Game.new
  end
  def create
    @game =  Game.new(game_params)
    if @game.save
      redirect_to '/games/index'
    else
      render 'new'
    end
  end
  private
  def game_params
    params.require(:image).permit(:game)
  end
end
