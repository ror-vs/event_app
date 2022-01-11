require "application_system_test_case"

class SpeakersTest < ApplicationSystemTestCase
  setup do
    @speaker = speakers(:one)
  end

  test "visiting the index" do
    visit speakers_url
    assert_selector "h1", text: "Speakers"
  end

  test "should create speaker" do
    visit speakers_url
    click_on "New speaker"

    fill_in "Email", with: @speaker.email
    fill_in "First name", with: @speaker.first_name
    fill_in "Last name", with: @speaker.last_name
    fill_in "Url", with: @speaker.url
    click_on "Create Speaker"

    assert_text "Speaker was successfully created"
    click_on "Back"
  end

  test "should update Speaker" do
    visit speaker_url(@speaker)
    click_on "Edit this speaker", match: :first

    fill_in "Email", with: @speaker.email
    fill_in "First name", with: @speaker.first_name
    fill_in "Last name", with: @speaker.last_name
    fill_in "Url", with: @speaker.url
    click_on "Update Speaker"

    assert_text "Speaker was successfully updated"
    click_on "Back"
  end

  test "should destroy Speaker" do
    visit speaker_url(@speaker)
    click_on "Destroy this speaker", match: :first

    assert_text "Speaker was successfully destroyed"
  end
end
