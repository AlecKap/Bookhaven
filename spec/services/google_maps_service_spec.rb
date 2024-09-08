require 'rails_helper'

RSpec.describe GoogleMapsService do
  describe 'instance methods' do
    describe '#get_coordinates' do
      it 'returns coordinates for a given address', :vcr do
        address = '1331 17th St LL100, Denver, CO 80202'
        service = GoogleMapsService.new(address)
        coordinates = service.get_coordinates

        expect(coordinates).to be_a(Hash)
        expect(coordinates).to have_key(:results)

        expect(coordinates[:results]).to be_an(Array)
        expect(coordinates[:results].first).to have_key(:geometry)
        expect(coordinates[:results].first[:geometry]).to have_key(:location)
        expect(coordinates[:results].first[:geometry][:location]).to have_key(:lat)
        expect(coordinates[:results].first[:geometry][:location]).to have_key(:lng)

        expect(coordinates[:results].first[:geometry][:location][:lat]).to be_a(Float)
        expect(coordinates[:results].first[:geometry][:location][:lng]).to be_a(Float)
      end
    end
  end
end