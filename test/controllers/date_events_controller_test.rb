require 'test_helper'

class DateEventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @date_event = date_events(:one)
  end

  test "should get index" do
    get date_events_url
    assert_response :success
  end

  test "should get new" do
    get new_date_event_url
    assert_response :success
  end

  test "should create date_event" do
    assert_difference('DateEvent.count') do
      post date_events_url, params: { date_event: {  } }
    end

    assert_redirected_to date_event_url(DateEvent.last)
  end

  test "should show date_event" do
    get date_event_url(@date_event)
    assert_response :success
  end

  test "should get edit" do
    get edit_date_event_url(@date_event)
    assert_response :success
  end

  test "should update date_event" do
    patch date_event_url(@date_event), params: { date_event: {  } }
    assert_redirected_to date_event_url(@date_event)
  end

  test "should destroy date_event" do
    assert_difference('DateEvent.count', -1) do
      delete date_event_url(@date_event)
    end

    assert_redirected_to date_events_url
  end
end
