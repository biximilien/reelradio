class EpisodesController < ApplicationController
  def show
    @episode = Episode.find(params[:id])
    respond_to do |format|
      format.html
    end
  end
end
