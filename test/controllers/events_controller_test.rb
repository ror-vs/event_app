require "test_helper"

class EventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @event = events(:one)
  end

  test "should get index" do
    get events_url
    assert_response :success
  end

  test "should get new" do
    get new_event_url
    assert_response :success
  end

  test "should create event" do
    assert_difference("Event.count") do
      post events_url, params: { event: { address: @event.address, all_day: @event.all_day, city: @event.city, country: @event.country, description: @event.description, end_date: @event.end_date, event_url: @event.event_url, feature: @event.feature, internal: @event.internal, long_name: @event.long_name, name: @event.name, province: @event.province, publish_on: @event.publish_on, published: @event.published, speaker_id: @event.speaker_id, speaker_notified_dat: @event.speaker_notified_dat, start_date: @event.start_date, submission_due_date: @event.submission_due_date, submission_faq: @event.submission_faq, unpublish: @event.unpublish, venue: @event.venue, year: @event.year } }
    end

    assert_redirected_to event_url(Event.last)
  end

  test "should show event" do
    get event_url(@event)
    assert_response :success
  end

  test "should get edit" do
    get edit_event_url(@event)
    assert_response :success
  end

  test "should update event" do
    patch event_url(@event), params: { event: { address: @event.address, all_day: @event.all_day, city: @event.city, country: @event.country, description: @event.description, end_date: @event.end_date, event_url: @event.event_url, feature: @event.feature, internal: @event.internal, long_name: @event.long_name, name: @event.name, province: @event.province, publish_on: @event.publish_on, published: @event.published, speaker_id: @event.speaker_id, speaker_notified_dat: @event.speaker_notified_dat, start_date: @event.start_date, submission_due_date: @event.submission_due_date, submission_faq: @event.submission_faq, unpublish: @event.unpublish, venue: @event.venue, year: @event.year } }
    assert_redirected_to event_url(@event)
  end

  test "should destroy event" do
    assert_difference("Event.count", -1) do
      delete event_url(@event)
    end

    assert_redirected_to events_url
  end
end
