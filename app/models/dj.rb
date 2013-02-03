class Dj < ActiveRecord::Base
  attr_accessible :facebook, :full_name, :soundcloud, :stage_name, :twitter
  has_many :bids
end
