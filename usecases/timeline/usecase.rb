require File.dirname(__FILE__) + '/output_data'
require File.dirname(__FILE__) + '/i_usecase'
module Timeline
  class Usecase
    def initialize(presenter, twitter_repository)
      @presenter = presenter
      @twitter_repository = twitter_repository
    end

    include Timeline::IUsecase

    def handle(_input_data)
      output_data = Timeline::OutputData.new(@twitter_repository.timeline)

      @presenter.complete_timeline(output_data)
    end
  end
end
