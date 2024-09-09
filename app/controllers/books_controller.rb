class BooksController < ApplicationController
  def index
    @books = Book.all
  end
  
  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
    @library = Library.find(params[:library_id])
  end

  def create
    facade = GoogleBooksFacade.new(params[:book][:isbn])
    if facade.book_details.nil?
      flash[:error] = "Book not found"
    else
      book = Book.new(facade.book_details)
      book.save
      LibraryBook.create(library_id: params[:book][:library_id], book_id: book.id)
      redirect_to library_path(params[:book][:library_id])
      flash[:success] = "Book added to library"
    end
  end
end