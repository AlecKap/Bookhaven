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
      determine_error_message(library)
      redirect_to new_library_path
    end
  end

  private

  def determine_error_message(library)
    if library.errors.full_messages.include?("Longitude can't be blank")
      flash[:error] = "Something about the address you entered is not valid. Please make sure the info you are providing is correct and try again.."
    else
      flash[:error] = "#{library.errors.full_messages.to_sentence}"
    end
  end

  def library_params
    params.require(:library).permit(:name, :address, :city, :state, :zip_code)
  end
end