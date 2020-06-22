class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
  end

  def create
    artist = Artist.new(artists_params)
    begin
      artist.save!
    rescue => exc
      flash[:notice] = "Something went wrong."
    ensure
      redirect_to artists_path
    end
  end

  def new
    @artist = Artist.new
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def update
    artist = Artist.find(params[:id])
    begin
      artist.update!(artists_params)
    rescue => exc
      flash[:notice] = "Something went wrong."
    ensure
      redirect_to artists_path
    end
  end

  def destroy
    artist = Author.find(params[:id])
    begin
      author.destroy!
    rescue => exc
      flash[:notice] = "Something went wrong."
    ensure
      redirect_to artists_path
    end
  end

  private
  def artists_params
    params.require('artist').permit(:name,:country)
  end

end