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
end
  
describe Thrower do
  
  let(:thrower){Thrower.new("username")}
  
  context "#initialize" do
    
    it "has a username" do
      thrower.name.should eq "username"
    end
    
    it "inherits from User" do
      Thrower.ancestors.should include User
    end
    
  end
  
  context "#create party" do
    
    it "creates a party" do
      thrower.create_party("Crazy Party").should be_a_kind_of Party
    end
  
    it "creates a party with the corresct name" do
      thrower.create_party("Crazy Party").name.should eq "Crazy Party"
    end
  
  end
  
end

describe Goer do
  
  let(:goer){Goer.new("username")}
  
  context "#initialize" do
    
    it "has a username" do
      goer.name.should eq "username"
    end
    
    it "inherits from User" do
      Goer.ancestors.should include User
    end
    
  end
  
  context "#join_party" do
    
    it "joins a party based on name" 
    
  end
  
end
  