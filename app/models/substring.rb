class Substring < ApplicationRecord

  def find_pattern(s)
h = {}
    d = -1
    max = 0
    count = 0

    (0...s.length).each do |i|
      if h[s[i]].nil?
        count += 1
      else
        max = count if count > max
        count = h[s[i]] > d ? i - h[s[i]] : count + 1
        d = h[s[i]] if d < h[s[i]]
      end
      h[s[i]] = i
    end

    max < count ? count : max
  end

end
