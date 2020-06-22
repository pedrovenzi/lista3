class AlbumsController < ApplicationController

  def index
    @albums = Album.all
  end

  def create
    album = Album.new(albums_params)
    begin
      album.save!
    rescue => exc
      flash[:notice] = "Something went wrong."
    ensure
      redirect_to albums_path
    end
  end

  def new
    @album = Album.new
    @genres = Genre.all
  end

  def edit
    @album = Album.find(params[:id])
  end

  def show
    @album = Album.find(params[:id])
  end

  def update
    album = Album.find(params[:id])
    begin
      album.update!(albums_params)
    rescue => exc
      flash[:notice] = "Something went wrong."
    ensure
      redirect_to albums_path
    end
  end

  def destroy
    album = Album.find(params[:id])
    begin
      album.destroy!
    rescue => exc
      flash[:notice] = "Something went wrong."
    ensure
      redirect_to albums_path
    end
  end

  private
  def albums_params
    params.require('album').permit(:name,:artist,:year)
  end
end
