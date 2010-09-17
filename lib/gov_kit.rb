$LOAD_PATH.unshift(File.expand_path(File.dirname(__FILE__))) unless $LOAD_PATH.include?(File.expand_path(File.dirname(__FILE__)))

require 'active_support'
require 'hpricot'
require 'iconv'
require 'httparty'
require 'json'
require 'gov_kit/configuration'

module GovKit
  autoload :Resource, 'gov_kit/resource'
  autoload :OpenStates, 'gov_kit/open_states'
  autoload :VoteSmart, 'gov_kit/vote_smart'
  autoload :ActsAsCiteable, 'gov_kit/acts_as_citeable'
  autoload :FollowTheMoney, 'gov_kit/follow_the_money'
  autoload :OpenCongress, 'gov_kit/open_congress'
  autoload :SearchEngines, 'gov_kit/search_engines'

  class Citation
    attr_accessor :url, :excerpt, :title, :source, :date, :weight
  end

  class GovKitError < StandardError
  end

  class NotAuthorized < GovKitError; end

  class InvalidRequest < GovKitError; end

  class ResourceNotFound < GovKitError; end
end
