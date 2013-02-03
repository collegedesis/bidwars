class DjsController < ApplicationController
  def index
    @djs = Dj.all     
  end

  def show
  end
end
