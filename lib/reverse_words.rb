=begin
Reverse Words in a String:
  - given an input string, reverse the string word by word. A word is defined as a sequence of non-space characters

The input string does not contain leading or trailing spaces and the words are always separated by a single space.

For example: the string 'ruby is fun' is reversed to 'fun is ruby'

Solution: Reversal

Assuming we are given 'ruby is fun'. The basic idea is:
1. Reverse each word in the string: 'ybur si nuf'
2. Reverse the whole string:      'fun is ruby'
=end

class ReverseWords
  def self.reverse_words(str)
    left = 0
    len = str.length

    (0..len).each do |right|
      if str[right] == ' '
        reverse(str, left, right-1)
        left = right+1
      end
    end

    reverse(str, left, len-1)
    reverse(str, 0, len-1)

    str
  end

  def self.reverse(str, left, right)
    while(left < right) do
      temp = str[left]
      str[left] = str[right]
      str[right] = temp
      left += 1
      right -= 1
    end
  end
end
