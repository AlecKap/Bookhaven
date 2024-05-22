class LibrariesController < ApplicationController
  def index
    @libraries = Library.all
  end
end