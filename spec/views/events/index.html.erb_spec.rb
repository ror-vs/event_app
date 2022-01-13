require 'rails_helper'

RSpec.describe "events/index", type: :view do
  speaker = Speaker.create(email: "test@gmail.com")
  before(:each) do
    assign(:events, [
      Event.create!(name: "event name", speaker_id: speaker.id),
      Event.create!(name: "event name", speaker_id: speaker.id)
    ])
  end

  it "renders a list of events" do
    render
  end
end
