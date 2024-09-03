require 'rails_helper'

RSpec.describe Library, type: :model do 

  describe 'validations' do
    it { should have_many(:library_books) }
    it { should have_many(:books).through(:library_books) }
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

        expect(library.number_of_books).to eq(2)
        expect(LibraryBook.count).to eq(2)
        expect(LibraryBook.first.book).to eq(book1)
        expect(LibraryBook.last.book).to eq(book2)
      end
    end
  end
end