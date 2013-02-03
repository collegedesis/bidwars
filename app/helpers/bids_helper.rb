module BidsHelper

  def voted?(bid, ip)
    conditions = { bid_id: bid.id, 
                  submitted_by_ip: ip}
    @vote = Vote.find(:first, conditions: conditions)
  end
end
