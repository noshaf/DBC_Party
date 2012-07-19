require 'simplecov'
SimpleCov.start
require 'rspec'
require '../library/user.rb'

# a user can join a party
# a user can create a party
# a user can search for songs to played in a party
# a user can a user can submit a song to played in a party
# a user can vote songs up and down that are in a party

describe User do 
  
  let(:user){User.new("username")}
  
  context "#initialize" do
    
    it "has a username" do
      user.name.should eq "username"
    end
    
  end
  
  context "#create_party" do
    
    it "creates a party" do
      user.create_party("Crazy Party").should be_a_kind_of Party
    end
    
    it "creates a party with the corresct name" do
      user.create_party("Crazy Party").name.should eq "Crazy Party"
    end
    
    
    
  end
  
end