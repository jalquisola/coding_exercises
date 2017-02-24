require "./lib/array_rotation.rb"

describe ArrayRotation do
  describe "#rotate" do
    context "when array is [1,2,3,4,5,6] and order is 2" do
      it "returns [5,6,1,2,3,4]" do
        expect(ArrayRotation.rotate([1,2,3,4,5,6], 2)).to eq [5,6,1,2,3,4]
      end
    end
  end
end
