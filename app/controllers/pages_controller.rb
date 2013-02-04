class PagesController < ApplicationController
  def about
  end
  def sponsors
    @competitions = Competition.all
  end
end
