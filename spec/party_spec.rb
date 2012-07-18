require 'simplecov'
SimpleCov.start
require 'rspec'
require '../library/party.rb'

describe Party do

  describe '#initialize' do

    before :each do
      @party = Party.new("test_music", "Noah's Party")
    end

    it "takes two argument" do
      expect{
      @party
      }.should_not raise_error(ArgumentError)
    end

    it "takes a directory of mp3 files as the first argument" do
      @party.music.first.split('.')[1].should eq 'mp3'
    end

    it "has a name as the second argument" do
      @party.name.should eq "Noah's Party"
    end

    it "plays "

  end

end