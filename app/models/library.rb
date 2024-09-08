class Library < ApplicationRecord
  has_many :library_books
  has_many :books, through: :library_books

  after_create :update_coordinates

  def full_address
    "#{address}, #{city}, #{state} #{zip_code}"
  end

  def num_of_books
    books.count
  end

  def update_coordinates
    service = GoogleMapsService.new(full_address)
    coordinates = service.get_coordinates
    
    if coordinates
      self.latitude = coordinates[:lat]
      self.longitude = coordinates[:lng]
      save
    else
      errors.add(:base, 'Could not fetch coordinates.')
      puts 'Could not fetch coordinates.'
    end
  end
end