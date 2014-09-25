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
end
