class VotesController < ApplicationController
  def create

    conditions = { bid_id: params[:vote][:bid_id], 
                  :submitted_by_ip => request.remote_ip}

    @vote = Vote.find(:first, conditions: conditions) || Vote.new(conditions)
    if @vote.new_record?
      @vote.save
      redirect_to bids_url, notice: "Vote submitted successfully!"
    else
      redirect_to bids_url, notice: "You've already voted."
    end
  end
end
