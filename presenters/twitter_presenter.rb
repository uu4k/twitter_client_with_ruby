require File.dirname(__FILE__) + '/../usecases/timeline/i_presenter'

class TwitterPresenter
  def initialize
  end

  include Timeline::IPresenter

  def complete_timeline(output_data)
    output_data.tweets.each do |tweet|
      puts tweet.text
    end
  end
end