class BroadcastsController < ApplicationController
  def index
    @broadcasts = Broadcast.all
    respond_to do |format|
      format.html
    end
  end

  def show
    @broadcast = Broadcast.find(params[:id])
    respond_to do |format|
      format.html
    end
  end
end
