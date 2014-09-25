require 'country'
require 'states'
require 'city'
module WorldWrap
  def countries options = {}
    COUNTRIES
  end

  def states options = {}
    return "Please pass a country name or code" if options[:country].nil? || options[:country].empty?
    country = options[:country].downcase
    STATES[country]
  end

  def cities options = {}
    return "Please pass a state name or code" if options[:state].nil? || options[:state].empty?
    state = options[:state].downcase
    CITIES[state]
  end
end
