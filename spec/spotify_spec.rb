require 'simplecov'
SimpleCov.start
require 'rspec'
require '../library/spotify.rb'

include Spotify
describe Spotify do

  context "#call" do

    it "calls the spotify API with a query and returns a song and its track id" do
      call("Usher").first.should eq ["Without You - feat. Usher",
                          "spotify:track:4GgOvZJ1vL1f6QTaPJdxXP"]
    end

  end

end