require 'rails_helper'

RSpec.describe "events/show", type: :view do
  before(:each) do
    speaker = Speaker.create(email: "test@gmail.com")
    @event = assign(:event, Event.create(name: "event", speaker_id: speaker.id))
  end

  it "renders attributes in <p>" do
    render
  end
end
