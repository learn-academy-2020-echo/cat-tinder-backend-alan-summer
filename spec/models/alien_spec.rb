require 'rails_helper'

RSpec.describe Alien, type: :model do
    it "should validate name" do
      alien = Alien.create
      expect(alien.errors[:name]).to_not be_empty
    end
    it "should validate distance" do 
        alien = Alien.create 
        expect(alien.errors[:distance]).to_not be_empty
    end
    it "should validate planet" do 
        alien = Alien.create 
        expect(alien.errors[:planet]).to_not be_empty
    end
  end