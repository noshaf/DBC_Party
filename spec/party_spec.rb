require 'simplecov'
SimpleCov.start
require 'rspec'
require '../library/party.rb'

describe Party do

  describe '#initialize' do

    before :each do
      @party = Party.new("test_music")
    end

    it "takes one argument" do
      expect{
      @party
      }.should_not raise_error(ArgumentError)
    end

    it "takes a directory of mp3 files as the argument" do
      @party.music.first.split('.')[1].should eq 'mp3'
    end

  end

end