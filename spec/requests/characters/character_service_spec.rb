require 'rails_helper'

RSpec.describe "the airbender request" do
    describe 'by Nation returns' do
        it 'connects via Faraday to the API' do
            connection = CharactersService.conn

            expect(connection).to be_a(Faraday::Connection)
        end 

        it 'returns an array of characters by Nation' do 
            response = CharactersService.characters_by_nation("fire nation")
            
            expect(response).to be_an(Array)
            expect(response[0]).to be_a(Hash)
            character = response[0]
            
            expect(character).to include :name, :affiliation, :allies, :enemies
            expect(response[0][:name]).to be_a(String)
        end
    end
end