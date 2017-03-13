require "./lib/reverse_integer.rb"

describe ReverseInteger do
  describe ".evaluate" do
    context "when number is 123" do
      it "returns 321" do
        expect(ReverseInteger.evaluate(123)).to eq 321
      end
    end

    context "when number is 1234" do
      it "returns 4321" do
        expect(ReverseInteger.evaluate(1234)).to eq 4321
      end
    end
  end
end
