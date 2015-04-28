require_relative '../../examples/dragons_controller'
require 'pry'

describe Dragon do 
	let(:given_words) { ""}

	context 'when dragon has a new rider' do
		let(:dragon) { Dragon.new }
		let(:rider) { Rider.new(created_at: Time.now - 7*24*3000) }
		let(:dragons_controller) { DragonsController.new }
		
		

		it 'coughs smoke' do
			dragons_controller.exhale(dragon, rider, given_words)
			expect(dragon.words).to eq 'Bummer. No flames, just smoke.'
		end
	end

	context 'when dragon has an experienced rider' do
		let(:dragon) { Dragon.new }
		let(:rider) { Rider.new(created_at: Time.now - 10*24*3600) }
		let(:dragons_controller) { DragonsController.new }

		it 'breathes flames' do
			dragons_controller.exhale(dragon, rider, given_words)
			expect(dragon.words).to eq 'Eat Flames!!'
		end
	end

	context 'when dragon has an experienced rider and is more than 10,000 lbs' do
		let(:dragon) { Dragon.new(weight: 20000) }
		let(:rider) { Rider.new(created_at: Time.now - 10*24*3600) }
		let(:dragons_controller) { DragonsController.new }

		it 'breathes flames' do
			dragons_controller.exhale(dragon, rider, given_words)
			expect(dragon.words).to eq 'We can crush anything!!'
		end
	end

	context 'when exhale receives given words' do
		let(:dragon) { Dragon.new(weight: 20000) }
		let(:rider) { Rider.new(created_at: Time.now - 10*24*3600) }
		let(:given_words) {"Yeehaw"}
		let(:dragons_controller) { DragonsController.new }
		

		it 'says only those words' do
			dragons_controller.exhale(dragon, rider, given_words)
			expect(dragon.words).to eq 'Yeehaw'
		end
	end
end

