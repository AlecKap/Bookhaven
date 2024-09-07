class GoogleBooksFacade
  def initialize(isbn)
    @isbn = isbn.gsub('-', '')
  end

  def book_details
    book_params = Hash.new

    book_info = book_data[:items].first[:volumeInfo]
    
    book_params[:title] = book_info[:title]
    book_params[:author] = book_info[:authors]
    book_params[:description] = book_info[:description]
    book_params[:genre] = book_info[:categories]
    book_params[:isbn_10] = book_info[:industryIdentifiers].first[:identifier]
    book_params[:isbn_13] = book_info[:industryIdentifiers].last[:identifier]
    book_params[:thumbnail_img] = book_info[:imageLinks][:thumbnail]
    book_params[:sm_thumbnail_img] = book_info[:imageLinks][:smallThumbnail]

    book_params
  end

  private

  def book_data
    @_book_data ||= service.books_by_isbn(@isbn)
  end

  def service
    @_service ||= GoogleBooksService.new
  end
end