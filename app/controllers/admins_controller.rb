class AdminsController < ApplicationController
  def index
    @admins = Admin.all
  end
  def show
    @admin = Admin.find(params[:id])
  end
  def new
    @admin = Admin.new
  end
  def create
    @admin = Admin.new(admin_params)
    if @admin.save
      user = User.find_for_authentication(:email => "#{@admin.email}")
      user.update_attribute :admin, true
      redirect_to '/games/index'
    else
      render('new')
    end
  end
  def edit
    @admin = Admin.find(params[:id])
  end
  def update
    @admin = Admin.find(params[:id])
    if @admin.update_attributes(game_params)
      redirect_to(:action => 'show', :id => @admin.id)
    else
      render('edit')
    end
  end
  def delete
    @admin = Admin.find(params[:id])
    @admin.destroy
    if @admin.destroy
      redirect_to(:action => 'index')
    else
      render('delete')
    end
  end
  private
  def admin_params
    params.require(:admin).permit(:email)
  end
end

