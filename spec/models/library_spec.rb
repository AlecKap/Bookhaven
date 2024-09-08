require 'rails_helper'

VCR.turned_off do
  RSpec.describe Library, type: :model do 

    describe 'validations' do
      it { should have_many(:library_books) }
      it { should have_many(:books).through(:library_books) }
      sleep(1)
      it { should validate_presence_of(:name) }
      it { should validate_presence_of(:address) }
      it { should validate_presence_of(:city) }
      it { should validate_presence_of(:state) }
      sleep(1)
      it { should validate_length_of(:name).is_at_most(100) }
      it { should validate_length_of(:address).is_at_most(100) }
      it { should validate_length_of(:city).is_at_most(50) }

    end

    describe 'instance methods' do
      describe '#full_address' do
        it 'returns the full address of the library' do
          library= create(:library)

          expect(library.full_address).to eq("#{library.address}, #{library.city}, #{library.state} #{library.zip_code}")
        end
      end

      describe '#number_of_books' do
        it 'returns the number of books in the library' do
          library = create(:library)
          book1 = create(:book)
          book2 = create(:book)
          library.books << book1
          library.books << book2

          expect(library.num_of_books).to eq(2)
          expect(LibraryBook.count).to eq(2)
          expect(LibraryBook.first.book).to eq(book1)
          expect(LibraryBook.last.book).to eq(book2)
        end
      end

      describe '#update_coordinates' do
        it 'updates the latitude and longitude of the library upon creation' do
          library = create(:library, latitude: nil, longitude: nil)
          address = library.full_address
          service = GoogleMapsService.new(address)
          coordinates = service.get_coordinates

          library.update_coordinates

          expect(library.latitude).to eq(coordinates[:lat])
          expect(library.longitude).to eq(coordinates[:lng])
        end

        it 'returns an error if the coordinates cannot be fetched' do
          library = create(:library, latitude: nil, longitude: nil)
          allow_any_instance_of(GoogleMapsService).to receive(:get_coordinates).and_return(nil)

          library.update_coordinates

          expect(library.errors.full_messages).to include('Could not fetch coordinates.')
        end
      end
    end
  end
end