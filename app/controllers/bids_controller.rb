class BidsController < ApplicationController
  def create
    bid = Bid.new(params[:bid])
    if bid.save
      redirect_to root_path
    else
      flash[:errors] = bid.errors
      redirect_to root_path
    end
  end

  def index
  end

  def show
  end
end
