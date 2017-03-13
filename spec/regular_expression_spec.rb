require './lib/regular_expression.rb'

describe RegularExpression do
  describe ".is_match" do
    context "when strings are 'aa' and 'a'" do
      it "returns false" do
        expect(RegularExpression.is_match('aa', 'a')).to eq false
      end
    end

    context "when strings are 'aa' and 'aa'" do
      it "returns true" do
        expect(RegularExpression.is_match('aa', 'aa')).to eq true
      end
    end

    context "when strings are 'aaa' and 'aa'" do
      it "returns false" do
        expect(RegularExpression.is_match('aaa', 'aa')).to eq false
      end
    end

    context "when strings are 'aa' and 'a*'" do
      it "returns true" do
        expect(RegularExpression.is_match('aa', 'a*')).to eq true
      end
    end

    context "when strings are 'aa' and '.*'" do
      it "returns true" do
        expect(RegularExpression.is_match('aa', '.*')).to eq true
      end
    end

    context "when strings are 'ab' and '.*'" do
      it "returns true" do
        expect(RegularExpression.is_match('ab', '.*')).to eq true
      end
    end

    context "when strings are 'aab' and 'c*a*b'" do
      it "returns true" do
        expect(RegularExpression.is_match('aab', 'c*a*b')).to eql true
      end
    end
  end
end
