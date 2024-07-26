require 'rails_helper'

RSpec.describe 'Mailers', type: :mailer do

  describe '#password_reset' do
    it 'sends a password reset email upon request' do
      Rails.application.routes.default_url_options[:host] = 'www.example.com'
      user = create(:user)
      user.send_reset_password_instructions
      
      expect(ActionMailer::Base.deliveries.count).to eq(1)
      expect(ActionMailer::Base.deliveries.first.subject).to eq('Reset password instructions')
      expect(ActionMailer::Base.deliveries.first.to).to eq([user.email])
      expect(ActionMailer::Base.deliveries.first.from).to eq(["notifications@bookhaven.com"])
    end
  end
end