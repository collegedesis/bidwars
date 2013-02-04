module DjsHelper  
  def random_bid
    @offerings ||= [
      "500 wild buffalos",
      "7 mom-made gulab jamuns",
      "A shoutout",
      "A thank you card",
      "Love"
    ]
    @offerings.shuffle!
    @offerings.length ? @offerings.pop : ""
  end
end