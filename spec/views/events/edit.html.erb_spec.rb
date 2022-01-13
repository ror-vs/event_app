require 'rails_helper'

RSpec.describe "events/edit", type: :view do
  before(:each) do
    speaker = Speaker.create(email: "test@gmail.com")
    @event = assign(:event, Event.create!(name: "event name", speaker_id: speaker.id))
  end

  it "renders the edit event form" do
    render

    assert_select "form[action=?][method=?]", event_path(@event), "post" do
    end
  end
end
