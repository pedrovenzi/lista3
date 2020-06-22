class SongsController < ApplicationController

  def index
    @album_id = params[:album_id]
    @songs = Song.all
  end

  def create
    song = Song.new(songs_params)
    begin
      song.save!
      redirect_to songs_path
    rescue => exc
      flash[:notice] = "Something went wrong."
      redirect_to new_song_path
    end
  end

  def new
    @song = Song.new
    @album_id = params[:album_id]
    @albums = Album.all
    @genres = Genre.all
  end

  def edit
    @song = Song.find(params[:id])
    @album_id = params[:album_id]
    @genres = Genre.all
  end

  def show
    @song = Song.find(params[:id])
    @songs = Song.all
  end

  def update
    song = Song.find(params[:id])
    begin
      song.update!(songs_params)
    rescue => exc
      flash[:notice] = "Something went wrong."
    ensure
      redirect_to songs_path
    end
  end

  def destroy
    song = Song.find(params[:id])
    begin
      song.destroy!
    rescue => exc
      flash[:notice] = "Something went wrong."
    ensure
      redirect_to songs_path
    end
  end

  private
  def songs_params
    params.require('song').permit(:name, :explicit, :genre_id, :album_id)
  end
end

