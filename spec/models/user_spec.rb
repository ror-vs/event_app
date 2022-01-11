require 'rails_helper'

RSpec.describe User, type: :model do
  context 'User Model' do  # (almost) plain English
    it 'User Password Validation' do   #
      user = User.create(
        email: 'test@example.com',
        password: 'password123',
        password_confirmation: 'password123'
      )
      expect(user.valid_password?('password123')).to be_truthy
    end
    end
    # context "with 2 or more comments" do
    #   it "orders them in reverse chronologically" do
    #     speaker = Speaker.create!
    #     event1 = speaker.event.create!(:name => "first comment")
    #     event2 = speaker.event.create!(:name => "second comment")
    #     expect(speaker.reload.events).to eq([event1, event2])
    #   end
    # end
end
