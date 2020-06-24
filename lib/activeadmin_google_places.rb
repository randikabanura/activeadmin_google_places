require 'activeadmin/google_places'
require 'formtastic/inputs/google_places_input'

module ActiveadminGooglePlaces

  class << self
    attr_accessor :config
  end

  def self.config
    @config ||= Configuration.new
  end

  def self.configure
    yield(config)
  end

  class Configuration
    attr_accessor :google_api_key

    def initialize
      @google_api_key = 'YOUR_APT_KEY'
    end
  end
end