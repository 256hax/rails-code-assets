require 'test_helper'

class Pt::EventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pt_event = pt_events(:one)
  end

  test "should get index" do
    get pt_events_url
    assert_response :success
  end

  test "should get new" do
    get new_pt_event_url
    assert_response :success
  end

  test "should create pt_event" do
    assert_difference('Pt::Event.count') do
      post pt_events_url, params: { pt_event: { area: @pt_event.area, comment: @pt_event.comment, image: @pt_event.image, name: @pt_event.name, pt_trainer_id: @pt_event.pt_trainer_id, the_date: @pt_event.the_date, title: @pt_event.title } }
    end

    assert_redirected_to pt_event_url(Pt::Event.last)
  end

  test "should show pt_event" do
    get pt_event_url(@pt_event)
    assert_response :success
  end

  test "should get edit" do
    get edit_pt_event_url(@pt_event)
    assert_response :success
  end

  test "should update pt_event" do
    patch pt_event_url(@pt_event), params: { pt_event: { area: @pt_event.area, comment: @pt_event.comment, image: @pt_event.image, name: @pt_event.name, pt_trainer_id: @pt_event.pt_trainer_id, the_date: @pt_event.the_date, title: @pt_event.title } }
    assert_redirected_to pt_event_url(@pt_event)
  end

  test "should destroy pt_event" do
    assert_difference('Pt::Event.count', -1) do
      delete pt_event_url(@pt_event)
    end

    assert_redirected_to pt_events_url
  end
end
