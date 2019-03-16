require 'yaml'
require File.dirname(__FILE__) + '/presenters/twitter_presenter'
require File.dirname(__FILE__) + '/usecases/timeline/usecase'
require File.dirname(__FILE__) + '/repositories/twitter_repository'
require File.dirname(__FILE__) + '/controllers/twitter_controller'

twitter_config = YAML.load_file('./twitter.yml')

twitter_presenter = TwitterPresenter.new
twitter_repository = TwitterRepository.new(twitter_config['consumer_key'], twitter_config['consumer_secret'], twitter_config['access_token'], twitter_config['access_token_secret'])
timeline_usecase = Timeline::Usecase.new(twitter_presenter, twitter_repository)
twitter_controller = TwitterController.new(timeline_usecase)

twitter_controller.show_timeline