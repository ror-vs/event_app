require "application_system_test_case"

class EventsTest < ApplicationSystemTestCase
  setup do
    @event = events(:one)
  end

  test "visiting the index" do
    visit events_url
    assert_selector "h1", text: "Events"
  end

  test "should create event" do
    visit events_url
    click_on "New event"

    fill_in "Address", with: @event.address
    check "All day" if @event.all_day
    fill_in "City", with: @event.city
    fill_in "Country", with: @event.country
    fill_in "Description", with: @event.description
    fill_in "End date", with: @event.end_date
    fill_in "Event url", with: @event.event_url
    check "Feature" if @event.feature
    check "Internal" if @event.internal
    fill_in "Long name", with: @event.long_name
    fill_in "Name", with: @event.name
    fill_in "Province", with: @event.province
    fill_in "Publish on", with: @event.publish_on
    check "Published" if @event.published
    fill_in "Speaker", with: @event.speaker_id
    fill_in "Speaker notified dat", with: @event.speaker_notified_dat
    fill_in "Start date", with: @event.start_date
    fill_in "Submission due date", with: @event.submission_due_date
    fill_in "Submission faq", with: @event.submission_faq
    fill_in "Unpublish", with: @event.unpublish
    fill_in "Venue", with: @event.venue
    fill_in "Year", with: @event.year
    click_on "Create Event"

    assert_text "Event was successfully created"
    click_on "Back"
  end

  test "should update Event" do
    visit event_url(@event)
    click_on "Edit this event", match: :first

    fill_in "Address", with: @event.address
    check "All day" if @event.all_day
    fill_in "City", with: @event.city
    fill_in "Country", with: @event.country
    fill_in "Description", with: @event.description
    fill_in "End date", with: @event.end_date
    fill_in "Event url", with: @event.event_url
    check "Feature" if @event.feature
    check "Internal" if @event.internal
    fill_in "Long name", with: @event.long_name
    fill_in "Name", with: @event.name
    fill_in "Province", with: @event.province
    fill_in "Publish on", with: @event.publish_on
    check "Published" if @event.published
    fill_in "Speaker", with: @event.speaker_id
    fill_in "Speaker notified dat", with: @event.speaker_notified_dat
    fill_in "Start date", with: @event.start_date
    fill_in "Submission due date", with: @event.submission_due_date
    fill_in "Submission faq", with: @event.submission_faq
    fill_in "Unpublish", with: @event.unpublish
    fill_in "Venue", with: @event.venue
    fill_in "Year", with: @event.year
    click_on "Update Event"

    assert_text "Event was successfully updated"
    click_on "Back"
  end

  test "should destroy Event" do
    visit event_url(@event)
    click_on "Destroy this event", match: :first

    assert_text "Event was successfully destroyed"
  end
end
