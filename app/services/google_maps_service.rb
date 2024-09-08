class GoogleMapsService
  def initialize(address)
    @address = address
  end

  def get_coordinates
    get_url("?address=#{@address}")[:results].first[:geometry][:location]
  end

  private

  def get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: 'https://maps.googleapis.com/maps/api/geocode/json') do |faraday|
      faraday.params['key'] = ENV['GOOGLE_MAPS_API_KEY']
    end
  end
end