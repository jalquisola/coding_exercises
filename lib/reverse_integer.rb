class ReverseInteger
  def self.evaluate(x)
    result = 0

    while(x!=0) do
      result = result*10 + x%10
      x = x/10
    end

    result
  end
end
