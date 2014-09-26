require 'spec_helper'
include WorldWrap 

describe WorldWrap do
  describe '#countries' do
    it 'should return all the countries when options is {}' do
      expected = COUNTRIES
      actual = countries {}
      expected.should == actual
    end
  end

  describe '#states' do
    it 'should return a error message when options is {}' do
      expected = "Please pass a country name or code"
      actual = states {}
      expected.should == actual
    end
    it 'should return states when country is found' do
      expected = STATES['in']
      actual = states({country: 'IN'})
      expected.should == actual
    end
    it 'should return states when country is found' do
      expected = STATES['india']
      actual = states({country: 'INDIA'})
      expected.should == actual
    end
    it 'should return TODO message' do
      expected = "Need to save data for af"
      actual = states({country: 'AF'})
      expected.should == actual
    end
  end

  describe '#cities' do
    it 'should return a error message when options is {}' do
      expected = "Please pass a state name or code"
      actual = cities {}
      expected.should == actual
    end

    it 'should return city when state is found' do
      expected = CITIES['ap']
      actual = cities({state: 'AP'})
      expected.should == actual
    end
  end

  describe '#is_valid_key?' do
    it 'should return false when code or name not matched' do
      expected = true
      actual = is_invalid_key?(COUNTRIES, 'dilkhush')
      expected.should == actual
    end
    it 'should return true when code or name matched' do
      expected = false
      actual = is_invalid_key?(COUNTRIES, 'in')
      expected.should == actual
    end
  end
end
