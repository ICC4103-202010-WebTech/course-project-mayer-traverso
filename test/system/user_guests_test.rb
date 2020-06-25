require "application_system_test_case"

class UserGuestsTest < ApplicationSystemTestCase
  setup do
    @user_guest = user_guests(:one)
  end

  test "visiting the index" do
    visit user_guests_url
    assert_selector "h1", text: "User Guests"
  end

  test "creating a User guest" do
    visit user_guests_url
    click_on "New User Guest"

    click_on "Create User guest"

    assert_text "User guest was successfully created"
    click_on "Back"
  end

  test "updating a User guest" do
    visit user_guests_url
    click_on "Edit", match: :first

    click_on "Update User guest"

    assert_text "User guest was successfully updated"
    click_on "Back"
  end

  test "destroying a User guest" do
    visit user_guests_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "User guest was successfully destroyed"
  end
end
