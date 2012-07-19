require 'simplecov'
SimpleCov.start
require 'rspec'
require '../library/spotify.rb'

include Spotify
describe Spotify do

  context "#call" do

    it "calls the spotify API with a query" do
      call("Usher").first.should eq "Without You - feat. Usher"
    end

end