require 'rails_helper'

RSpec.describe LibraryBook, type: :model do

  describe 'validations' do
    it { should belong_to(:book) }
    it { should belong_to(:library) }
  end
end