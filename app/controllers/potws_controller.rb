class PotwsController < ApplicationController
  def index
    @potws = Potw.all
  end
  def new
    @potw = Potw.new
  end
  def create
    @potw = Potw.new(potw_params)
    if @potw.save
      redirect_to 'potw/index'
    else
      render('new')
    end
  end
  def edit
    @potw = Potw.find(params[:id])
  end
  def update
    @potw = Potw.find(params[:id])
    if @potw.update_attributes(potw_params)
      redirect_to(:action => 'index')
    else
      render('edit')
    end
  end
private
  def potw_params
    params.require(:potw).permit(:purl)
  end
end
