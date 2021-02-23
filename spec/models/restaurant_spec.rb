require 'rails_helper'

RSpec.describe Restaurant do
    context 'testing tspec' do
        it do
            expect(1). to eq 1
        end
    end
end

RSpec.describe Restaurant do
    context 'testing total of products' do                 
        it 'returns total of products for a specific restaurant' do
            restaurant = Restaurant.create(name:'Rest 1', address: 'End 1')            
            p1 = Product.create(restaurant: restaurant, name: 'p1', value:10)
            p1 = Product.create(restaurant: restaurant, name: 'p2', value:20)
            expect(restaurant.total_of_products).to eq 2
        end
    end 
end
