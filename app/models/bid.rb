class Bid < ActiveRecord::Base
  attr_accessible :competition_id, :dj_id, :offering
  belongs_to :dj
  belongs_to :competition
  has_many :votes
  validates_presence_of :competition, :dj
  after_create :send_tweet

  def send_tweet
    str = "#{competition.name} bid #{offering} on #{dj.twitter_mention} for #TheBestBrownParty."
    Twitter.update(str)
  end
end
