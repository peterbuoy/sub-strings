# Remark: You don't have to find the substrings of the target word.
# You just have to check if the words in the dictionary are substrings of the target string!

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
# uniq_dictionary = dictionary.uniq

def substrings(string, dictionary)
	substring_hashmap = Hash.new()
	dictionary.each do |word|
		substring_count = string.scan(/#{word}/).length
		if substring_count.nonzero?
			substring_hashmap[word] = substring_count
		end
	end
	print substring_hashmap
	return substring_hashmap
end

substrings("Howdy partner, sit down! How's it going?", dictionary)
