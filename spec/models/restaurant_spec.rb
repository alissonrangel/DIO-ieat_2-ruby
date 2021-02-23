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

RSpec.describe Restaurant do
    context 'testing total of products with FactoryBot and Faker' do         
        let(:restaurant) {FactoryBot.create(:restaurant)}
        let(:total) { rand(5) }        
        before do
            puts "Restaurante: #{restaurant.name}, Endereço: #{restaurant.address}"            
            (1..total).each do |item|                
                product = FactoryBot.create(:product, restaurant: restaurant)
                puts "Produto: #{product.name}, Preço: #{product.value}"
            end            
        end
        it 'returns total of products for a specific restaurant' do            
            
            expect(restaurant.total_of_products).to eq total
        end
    end 
end
