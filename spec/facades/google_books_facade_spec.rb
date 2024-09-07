require 'rails_helper'

RSpec.describe GoogleBooksFacade do
  describe 'instance methods' do
   describe '#book_details' do
     it 'returns a hash of book details', :vcr do
       isbn = '9780061120084'
       facade = GoogleBooksFacade.new(isbn)
       book_details = facade.book_details
       
       expect(book_details).to be_a(Hash)

       expect(book_details).to have_key(:title)
       expect(book_details).to have_key(:author)
       expect(book_details).to have_key(:description)
       expect(book_details).to have_key(:genre)
       expect(book_details).to have_key(:isbn_10)
       expect(book_details).to have_key(:isbn_13)
       expect(book_details).to have_key(:thumbnail_img)
       expect(book_details).to have_key(:sm_thumbnail_img)

       expect(book_details[:title]).to be_a(String)
       expect(book_details[:author]).to be_a(Array)
       expect(book_details[:description]).to be_a(String)
       expect(book_details[:genre]).to be_a(Array)
       expect(book_details[:isbn_10]).to be_a(String)
       expect(book_details[:isbn_13]).to be_a(String)
       expect(book_details[:thumbnail_img]).to be_a(String)
       expect(book_details[:sm_thumbnail_img]).to be_a(String)
     end
   end
  end
end