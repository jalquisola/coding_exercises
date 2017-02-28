require "./lib/sorted_arrays"

describe SortedArrays do
  describe ".median" do
    context "when both strings are nil" do
      it "returns false" do
        expect(SortedArrays.median(nil, nil)).to eq ""
      end
    end

    context "when strings are 'abcde' and 'fgh'" do
      it "returns 'e'" do
        expect(SortedArrays.median('abcde', 'fgh')).to eq 'e'
      end
    end

    context "when strings are 'abc' and 'abc'" do
      it "returns 'bb'" do
        expect(SortedArrays.median('abc', 'abc')).to eq 'b'
      end
    end

    context "when strings are 'abcde' and 'fgh'" do
      it "returns 'e'" do
        expect(SortedArrays.median('fgh', 'abcde')).to eq 'e'
      end
    end

  end
end
