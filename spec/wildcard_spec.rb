require './lib/wildcard.rb'

describe Wildcard do
  context "when the strings are 'aab' and '*ab'" do
    it "returns true" do
      expect(Wildcard.matched('aab', '*ab')).to eql true
    end
  end

  context "when the strings are 'aabc' and '*ab'" do
    it "returns false" do
      expect(Wildcard.matched('aabc', '*ab')).to eql false
    end
  end
end
