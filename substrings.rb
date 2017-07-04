def substrings (text, dictionary)
  array_text = text.downcase.split(" ")
  tot_substrings = Hash.new(0)

  array_text.each do |word|
    dictionary.each do |substring|
      if(word.include?(substring))
        tot_substrings[substring] += 1
      end
    end
  end

puts tot_substrings

end





dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
#=> ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

#substrings("below", dictionary)
#=> {"below"=>1, "low"=>1}



substrings("Howdy partner, sit down! How's it going?", dictionary)
#=> {"down"=>1, "how"=>2, "howdy"=>1,"go"=>1, "going"=>1, "it"=>2, "i"=> 3, "own"=>1,"part"=>1,"partner"=>1,"sit"=>1}
