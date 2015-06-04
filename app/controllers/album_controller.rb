class AlbumController < ApplicationController
	before_action :require_user, only: [:index, :show]
  def index
    @album = Album.all
  end 

  def show
    @album = Album.find(params[:id])
    @photos = @album.photos
  end

end
