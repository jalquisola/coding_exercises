class Wildcard
  def self.matched(s, p)
    i,j = 0,0
    star_index, index = -1, -1
    s_len = s.size
    p_len = p.size

    while(i < s_len) do
      if(j < p_len) && (p[j] == '?' || p[j]==s[i])
        i += 1;
        j += 1;
      elsif(j<p_len && p[j]=='*')
        star_index = j
        index = i
        j += 1
      elsif index != -1
        j = star_index + 1
        i = index + 1
        index += 1
      else
        return false
      end
    end

    while(j< p_len && p[j]=='*') do
      j += 1
    end

    return j == p_len
  end
end
