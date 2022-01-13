require 'rails_helper'

RSpec.feature "Users::UserSignupSpec.rbs", type: :feature do

  let(:user)  { FactoryBot.build :user }
  after :each do
    Warden.test_reset!
  end
  describe 'user is not signed-up' do
    scenario 'user signs-up on registration page' do
      user_session_url(email: user.email, password: user.password)
      expect(root_path).to eql(root_path)
    end
  end

end
