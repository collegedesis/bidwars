class Vote < ActiveRecord::Base
  attr_accessible :bid_id, :submitted_by_ip
  belongs_to :bid
  validates_presence_of :bid
end
