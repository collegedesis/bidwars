class Bid < ActiveRecord::Base
  attr_accessible :competition_id, :dj_id, :offering
  belongs_to :dj
  belongs_to :competition
  has_many :votes
  validates_presence_of :competition, :dj
  after_create :send_tweet

  def send_tweet
    str = "#{competition.twitter_mention} bid #{offering} on #{dj.twitter_mention} for #TheBestBrownParty. party.collegedesis.com"
    # If competition has a twitter, str will start with @. So we'll ad a period at the beginning. 
    if competition.twitter?
      str = ".#{str}"
    end
    
    Twitter.update(str)
  end
end