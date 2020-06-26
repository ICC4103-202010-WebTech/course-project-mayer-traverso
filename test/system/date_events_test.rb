require "application_system_test_case"

class DateEventsTest < ApplicationSystemTestCase
  setup do
    @date_event = date_events(:one)
  end

  test "visiting the index" do
    visit date_events_url
    assert_selector "h1", text: "Date Events"
  end

  test "creating a Date event" do
    visit date_events_url
    click_on "New Date Event"

    click_on "Create Date event"

    assert_text "Date event was successfully created"
    click_on "Back"
  end

  test "updating a Date event" do
    visit date_events_url
    click_on "Edit", match: :first

    click_on "Update Date event"

    assert_text "Date event was successfully updated"
    click_on "Back"
  end

  test "destroying a Date event" do
    visit date_events_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Date event was successfully destroyed"
  end
end
