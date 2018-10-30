class ArtistsController < ApplicationController

  def show
    @artist = Genre.find(params[:id])
  end

  def new
    @artist = Genre.new
  end

  def create
    @artist = Genre.new(artist_params(:name))
    @artist.save
    redirect_to artist_path(@artist)
  end

  def edit
    @artist = Genre.find(params[:id])
  end

  def update
    @artist = Genre.find(params[:id])
    @artist.update(artist_params(:name))
    redirect_to artist_path(@artist
  end

  private

  def artist_params(*args)
    params.require(:artist).permit(*args)
  end
end
