=begin
Isomorphic Strings
  - given two strings s and t, determine if they are isomorphic.
  - Two strings are isomorphic if the characters in s can be replaced to get t.

For example:
  "add" and "egg" are isomorphic
  "ruby" and "ball" are non-isomorphic

Solution: Create a mappings of the characters.

Loop through each element in the given array.
  When character in s is already in mappings key and value is not equal to character in t , return false.
  When character in t is already in mappings values , return false.
Otherwise, return true
=end
class IsomorphicStrings
  def self.evaluate(s, t)
    return false if s.nil? || t.nil?
    return false if s.length != t.length

    mappings = {}
    (0...s.length).each do |index|
      c1 = s[index]
      c2 = t[index]

      if mappings.has_key?(c1)
        return false if mappings[c1] != c2
      else
        return false if mappings.has_value?(c2)
        mappings[c1] = c2
      end
    end

    true
  end
end
