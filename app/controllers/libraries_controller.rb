class LibrariesController < ApplicationController
  def index
    @libraries = Library.all
  end

  def show
    @library = Library.find(params[:id])
  end

  def new
    @library = Library.new
  end

  def create
    library = Library.new(library_params)

    if library.save
      redirect_to library
    else
      flash[:error] = "#{library.errors.full_messages.to_sentence}"
      redirect_to new_library_path
    end
  end

  private

  def library_params
    params.require(:library).permit(:name, :address, :city, :state, :zip_code)
  end
end