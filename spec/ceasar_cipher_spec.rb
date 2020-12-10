require_relative '../lib/ceasar_cipher'

describe "the ceasar_cipher_letter method" do 
	it "should return a schifted letter" do 
		expect(ceasar_cipher_letter("a", 3)).to eq("d")
		expect(ceasar_cipher_letter("W", 3)).to eq("Z")
		expect(ceasar_cipher_letter("z", 3)).to eq("c")
	end
end

describe "the ceasar_cipher method" do 
	it "should return a new string with schifted letters" do 
		expect(ceasar_cipher("abcd", 5)).to eq("fghi")
		expect(ceasar_cipher("What a string!", 5)).to eq("Bmfy f xywnsl!")
	end
end

