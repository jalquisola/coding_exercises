require 'byebug'

class RegularExpression
  def self.is_match(str, p)
    p_len = p.length
    s_len = str.length

    #base case
    if p_len == 0
      return s_len == 0
    end

    # special case
    if p_len == 1

      #if the length of s is 0, return false
      if s_len < 1
        return false
      #if the first character does not match, return false
      elsif p[0] != str[0] && p[0] != '.'
        return false
      #otherwise, compare the rest of the string s and p
      else
        return is_match(str[1, s_len-1], p[1,p_len-1])
      end
    end

    #case 1: when the second char of p is not '*'
    if p[1] != '*'
      return false if s_len < 1
      if p[0] != str[0] && p[0]!='.'
        return false
      else
        return is_match(str[1, s_len-1], p[1,p_len-1])
      end
    #case 2: when the second char of p is '*', complex case
    else
      #case 2.1: a char & '*' can stand for 0 element
      if is_match(str, p[2, p_len-1])
        return true
      end

      #case 2.1: a char & '*' can stand for 1 or more preceding element, so try every substring
      i=0
      while(i<s_len && (str[i]==p[0] || p[0]=='.' )) do
        if is_match(str[i+1, s_len-1], p[2, p_len-1])
          return true
        end
        i += 1
      end
      return false
    end
  end
end
