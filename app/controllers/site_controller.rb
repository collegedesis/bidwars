class SiteController < ApplicationController

  def index
    @djs = Dj.all     
  end
end
