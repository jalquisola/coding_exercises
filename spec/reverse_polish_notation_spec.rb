require "./lib/reverse_polish_notation.rb"

describe ReversePolishNotation do
  describe ".evaluate" do
    context "when array is ['2', '1', '+', '3', '*']" do
      it "returns 9" do
        expect(ReversePolishNotation.evaluate(['2','1','+','3', '*'])).to eq 9
      end
    end

    context "when array is ['4','13','5','/','+']" do
      it "returns 'world hello'" do
        expect(ReversePolishNotation.evaluate(['4','13','5','/','+'])).to eq 6
      end
    end
  end
end
