require File.dirname(__FILE__) + '/../usecases/timeline/input_data'
class TwitterController
  def initialize(timeline_usecase)
    @timeline_usecase = timeline_usecase
  end

  def show_timeline
    @timeline_usecase.handle(Timeline::InputData.new)
  end
end