=begin
Find the median of 2 sorted arrays

Solution:
  This problem can be converted to the problem of finding kth element, k = (A.size + B.size)/2
If any of the 2 array is empty, then the kth element is the non-empty's kth element.
If k==0, the kth element is the first element of A or B.
For normal case, we need to move the pointer at the pace of half of the array size to get log(n) time.)
=end

class SortedArrays
  def self.median(a,b)
    return "" if a.nil? || b.nil?
    m = a.size
    n = b.size
    total = m + n

    if total.odd?
      find_kth(a, b, total/2, 0, m-1, 0, n-1)
    else
      find_kth(a, b, total/2, 0, m-1, 0, n-1) +
      find_kth(a, b, total/2 - 1, 0, m-1, 0, n-1)*0.5
    end
  end

  def self.find_kth(a, b, k, a_start, a_end, b_start, b_end)
    a_len = a_end - a_start + 1
    b_len = b_end - b_start + 1

    return b[b_start + k] if a_len == 0
    return a[a_start + k] if a_len == 0

    if k==0
      return a[a_start] < b[b_start] ? a[a_start] : b[b_start]
    end

    a_mid = a_len * k / (a_len + b_len)
    b_mid = k - a_mid - 1

    a_mid = a_mid + a_start
    b_mid = b_mid + b_start

    if a[a_mid] > b[b_mid]
      k = k - (b_mid - b_start + 1)
      a_end = a_mid
      b_start = b_mid + 1
    else
      k = k - (a_mid - a_start + 1)
      b_end = b_mid
      a_start = a_mid + 1
    end

    find_kth(a, b, k, a_start, a_end, b_start, b_end)
  end
end
