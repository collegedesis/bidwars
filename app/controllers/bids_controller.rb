class BidsController < ApplicationController
  def create
    Bid.create(params[:bid])
    redirect_to root_path
  end

  def index
  end

  def show
  end
end
