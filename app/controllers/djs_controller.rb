class DjsController < ApplicationController
  def index
    @djs = Dj.all   
    @bids = Bid.all
  end

  def show
  end
end
