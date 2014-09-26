require 'country'
require 'state'
require 'city'
module WorldWrap
  def countries options = {}
    COUNTRIES
  end

  def states options = {}
    return "Please pass a country name or code" if options[:country].nil? || options[:country].empty?
    country = options[:country].downcase
    return "not a valid key" if is_invalid_key?(COUNTRIES, country)
    return "Need to save data for #{country}" unless STATES.has_key?(country)
    STATES[country]
  end

  def cities options = {}
    return "Please pass a state name or code" if options[:state].nil? || options[:state].empty?
    state = options[:state].downcase
#    return "not a valid key" if is_invalid_key?(STATES, state) TODO
    return "Need to store data for #{state} Or its not a state in the given list" unless CITIES.has_key?(state)
    CITIES[state]
  end

  def is_invalid_key?(objects, value)
    is_valid = objects.select{|object| object if [object[:name].downcase, object[:code].downcase].include?(value)}
    is_valid.empty?
  end
end
