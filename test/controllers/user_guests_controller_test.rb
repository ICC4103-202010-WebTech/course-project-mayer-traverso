require 'test_helper'

class UserGuestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_guest = user_guests(:one)
  end

  test "should get index" do
    get user_guests_url
    assert_response :success
  end

  test "should get new" do
    get new_user_guest_url
    assert_response :success
  end

  test "should create user_guest" do
    assert_difference('UserGuest.count') do
      post user_guests_url, params: { user_guest: {  } }
    end

    assert_redirected_to user_guest_url(UserGuest.last)
  end

  test "should show user_guest" do
    get user_guest_url(@user_guest)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_guest_url(@user_guest)
    assert_response :success
  end

  test "should update user_guest" do
    patch user_guest_url(@user_guest), params: { user_guest: {  } }
    assert_redirected_to user_guest_url(@user_guest)
  end

  test "should destroy user_guest" do
    assert_difference('UserGuest.count', -1) do
      delete user_guest_url(@user_guest)
    end

    assert_redirected_to user_guests_url
  end
end
