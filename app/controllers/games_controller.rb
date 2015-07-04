class GamesController < ApplicationController

  def index
    @games = Game.all
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)
    if @game.save
      redirect_to '/games/index'
    else
      render('new')
    end
  end

  def show
    @game = Game.find(params[:id])
  end

  def edit
    @game = Game.find(params[:id])
  end

  def update
    @game = Game.find(params[:id])
    if @game.update_attributes(game_params)
      redirect_to(:action => 'show', :id => @game.id)
    else
      render('edit')
    end
  end

  def delete
    @game = Game.find(params[:id])
    @game.destroy
    if @game.destroy
      redirect_to(:action => 'index')
    else
      render('delete')
    end
  end
  private
  def game_params
    params.require(:game).permit(:image, :game, :title)
  end
end
