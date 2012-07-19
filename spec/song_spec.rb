require 'simplecov'
SimpleCov.start
require 'rspec'
require '../library/song.rb'

describe Song do

  context "#initialize" do

    it "prints its name and id" do
      song = Song.new("Dance", "spotify:track:5tXyNhNcsnn7HbcABntOSf")
      song.name.should eq "Dance"
      song.track_id.should eq "spotify:track:5tXyNhNcsnn7HbcABntOSf"
    end

  end

end