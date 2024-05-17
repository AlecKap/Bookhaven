require 'rails_helper'

RSpec.describe Library, type: :model do 

  describe 'validations' do
    it { should have_many(:library_books) }
    it { should have_many(:books).through(:library_books) }
  end
end