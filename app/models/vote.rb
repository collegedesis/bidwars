class Vote < ActiveRecord::Base
  attr_accessible :bid_id, :submitted_by_ip
  belongs_to :bid
  validates_presence_of :bid

  after_create :send_tweet

  def send_tweet
    binding.pry
    tw_user = twitter? ? ".@#{twitter}" : "Someone"
    str = "#{tw_user} thinks #{bid.dj.twitter_mention} should play for the #{bid.competition.name} hour at #TheBestBrownParty."
    Twitter.update(str)
  end
end
