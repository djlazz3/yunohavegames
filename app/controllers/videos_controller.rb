class VideosController < ApplicationController
  def index
    @videos = Video.all
  end
  def new
    @video = Video.new
  end
  def create
    @video = Video.new(video_params)
    if @video.save
      redirect_to videos_index_path
    else
      render('new')
    end
  end
  def edit
    @video = Video.find(params[:id])
  end
  def update
    @video = Video.find(params[:id])
    if @video.update_attributes(video_params)
      redirect_to(:action => 'index')
    else
      render('edit')
    end
  end
private
  def video_params
    params.require(:video).permit(:url)
  end
end
