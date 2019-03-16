module Timeline
  class OutputData
    attr_reader :tweets
    def initialize(tweets)
      @tweets = tweets
    end
  end
end
