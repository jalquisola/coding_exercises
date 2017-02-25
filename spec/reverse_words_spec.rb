require "./lib/reverse_words.rb"

describe ReverseWords do
  describe "#reverse_words" do
    context "when string is 'ruby is fun'" do
      it "returns 'fun is ruby'" do
        expect(ReverseWords.reverse_words("ruby is fun")).to eq "fun is ruby"
      end
    end

    context "when string is 'hello world'" do
      it "returns 'world hello'" do
        expect(ReverseWords.reverse_words("hello world")).to eq "world hello"
      end
    end

    context "when string is 'ruby'" do
      it "returns 'ruby'" do
        expect(ReverseWords.reverse_words("ruby")).to eq "ruby"
      end
    end
  end
end
