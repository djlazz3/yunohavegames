class BlogsController < ApplicationController
  def index
    @blogs = Blog.all
  end

  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new(blog_params)
    if @blog.save
      redirect_to blogs_path
    else
      render :new
    end
  end

  def show
    @blog = Blog.find(params[:id])
  end

  def edit
    @blog = Blog.find(params[:id])
  end

  def update
    @blog = Blog.find(params[:id])
    if @blog.update_attributes(blog_params)
      redirect_to(:action => 'show', :id => @blog.id)
    else
      render('edit')
    end
  end

  def delete
    @blog = Blog.find(params[:id])
    @blog.destroy
    if @blog.destroy
      redirect_to(:action => 'index')
    else
      render('delete')
    end
  end


  private

  def blog_params
    params.require(:blog).permit(:name,:subject)
  end
end
