require_relative '../lib/trader'

describe "the trader method" do 
	it "should return text which informs about the best deal " do 
		expect(trader([17, 3, 6, 1, 15, 8, 6, 1, 10])).to eq(
			'Acheter jour 4 à 1$
			Vendre jour 5 à 15$
			Plus-value: 14$')
	end
end



