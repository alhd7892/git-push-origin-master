def spin_words(string)
  string.split(" ").map do |word|
    if word.length >= 5
      word.reverse
    else
      word
    end
  end.join(" ")
end

p spin_words ("Hey fellow Le Wagon alumni")
p spin_words ("Rake it until you make it")
p spin_words ("Change your life, learn to code")
