require 'simplecov'
SimpleCov.start
require 'rspec'
require '../library/party.rb'

describe Party do

  describe '#initialize' do

    before :each do
      @party = Party.new("Noah's Party")
    end

    it "takes an argument" do
      expect{
      @party
      }.should_not raise_error(ArgumentError)
    end

  end

end