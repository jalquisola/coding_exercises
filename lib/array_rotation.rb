=begin
Rotate Array:
  - rotate an array of n elements to the right by k steps.

For example: with n=7 and k=3, the array [1,2,3,4,5,6,7] is rotated to [5,6,7,1,2,3,4]

Solution: Reversal

Assuming we are given [1,2,3,4,5,6,7] and order 3. The basic idea is:
1. Divide the array into 2 parts: [1,2,3,4] and [5,6,7]
2. Reverse the first part: [4,3,2,1, 5,6,7]
3. Reverse the 2nd part:   [4,3,2,1, 7,6,5]
4. Reverse the array:      [5,6,7,1,2,3,4]
=end

class ArrayRotation
  def self.rotate(arr, order)
    if arr.nil? || arr.empty? || order < 0
      return
    end

    size = arr.size
    if order > arr.size
      order = size % order
    end

    a = size - order
    reverse(arr, 0, a-1)
    reverse(arr, a, size-1)
    reverse(arr, 0, size-1)

    arr
  end

  def self.reverse(arr, left, right)
    return if arr.nil? || arr.size == 1
    while(left < right) do
      temp = arr[left]
      arr[left] = arr[right]
      arr[right] = temp
      left += 1
      right -= 1
    end
  end
end
