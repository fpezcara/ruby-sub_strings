def substrings(string, dictionary)
  count = {}
  dictionary.each do |word|
    string
      .split(" ")
      .each do |w|
        clear_w =  w.downcase.gsub(/\W+/, '')
        if clear_w.match(/#{word}+/)
          if count.include?(word)
            count[word] = count[word] + 1
          else
            count[word] = 1
          end
        end
      end
  end
  count
end
