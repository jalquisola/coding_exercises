require "./lib/isomorphic_strings.rb"

describe IsomorphicStrings do
  describe ".evaluate" do
    context "when both strings are nil" do
      it "returns false" do
        expect(IsomorphicStrings.evaluate(nil, nil)).to eq false
      end
    end

    context "when strings are 'programming' and 'coding'" do
      it "returns false" do
        expect(IsomorphicStrings.evaluate('programming', 'coding')).to eq false
      end
    end

    context "when strings are 'ruby' and 'book'" do
      it "returns false" do
        expect(IsomorphicStrings.evaluate('ruby', 'book')).to eq false
      end
    end

    context "when strings are 'add' and 'egg'" do
      it "returns true" do
        expect(IsomorphicStrings.evaluate('add', 'egg')).to eq true
      end
    end
  end
end
