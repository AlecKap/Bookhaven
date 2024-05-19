require 'rails_helper'

RSpec.describe GoogleBooksService do
  describe 'instance methods' do
    describe '#books_by_isbn' do
      it 'returns book data by isbn', :vcr do
        isbn = '9780692714416'
        service = GoogleBooksService.new
        book_data = service.books_by_isbn(isbn)

        expect(book_data).to be_a(Hash)
        expect(book_data).to have_key(:kind)
        expect(book_data).to have_key(:totalItems)
        expect(book_data).to have_key(:items)
        expect(book_data[:items]).to be_an(Array)
        expect(book_data[:items].first).to have_key(:volumeInfo)
        expect(book_data[:items].first[:volumeInfo]).to have_key(:title)
        expect(book_data[:items].first[:volumeInfo]).to have_key(:authors)
        expect(book_data[:items].first[:volumeInfo]).to have_key(:description)
        expect(book_data[:items].first[:volumeInfo]).to have_key(:imageLinks)

        expect(book_data[:items].first[:volumeInfo][:title]).to be_a(String)
        expect(book_data[:items].first[:volumeInfo][:authors]).to be_an(Array)
        expect(book_data[:items].first[:volumeInfo][:description]).to be_a(String)
        expect(book_data[:items].first[:volumeInfo][:imageLinks]).to be_a(Hash)
        
      end
    end
  end
end