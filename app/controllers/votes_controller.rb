class VotesController < ApplicationController
  def create

    # We'll get the bid we're voting on
    # and the voter's IP address.
    conditions = {
      bid_id: params[:vote][:bid_id], 
      submitted_by_ip: request.remote_ip
    }
    # Check to see if this IP address has voted on this bid
    # If it hasn't we'll initialize a new vote object
    @vote = Vote.find(:first, conditions: conditions) || Vote.new(conditions)

    # If vote is a new object we'll add the twitter param.
    # The twitter param is an optional string the voter can add to the form
    # so they are mentioned in the tweet. 
    if @vote.new_record?
      @vote.twitter = params[:vote][:twitter]
      @vote.save
      redirect_to bids_url, notice: "Vote submitted successfully!"
    else
      redirect_to bids_url, notice: "You've already voted."
    end
  end
end
