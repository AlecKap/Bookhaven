class Library < ApplicationRecord
  has_many :library_books
  has_many :books, through: :library_books

  validates :name, presence: true, length: { maximum: 100 }
  validates :address, presence: true, length: { maximum: 100 }
  validates :city, presence: true, length: { maximum: 50 }
  validates :state, presence: true
  validates :latitude, presence: true
  validates :longitude, presence: true

  before_create :update_coordinates if -> { Rails.env.production? }

  def full_address
    "#{address}, #{city}, #{state} #{zip_code}"
  end

  def num_of_books
    books.count
  end

  def update_coordinates
    service = GoogleMapsService.new(full_address)
    coordinates = service.get_coordinates
    
    if coordinates.nil?
      puts 'Could not fetch coordinates.'
    else
      self.latitude = coordinates[:lat]
      self.longitude = coordinates[:lng]
    end
  end
end