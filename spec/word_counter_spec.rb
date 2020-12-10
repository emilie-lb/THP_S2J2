require_relative '../lib/word_counter'

dictionnary  = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]

describe "the compare_string_to_dictionnary method" do 
	it "should return, for one word, an array with words present in dictionary" do 
		expect(compare_string_to_dictionnary("Below", dictionnary)).to eq(["below", "low"])
	end
end

describe "the word_counter method" do 
	it "should return the number of times dictionary words are present in the string" do 
		expect(word_counter("Below", dictionnary)).to eq({"below"=> 1, "low"=> 1})
		expect(word_counter("Howdy partner, sit down! How's it going?", dictionnary))
	end
end
