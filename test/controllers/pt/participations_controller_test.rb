require 'test_helper'

class Pt::ParticipationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pt_participation = pt_participations(:one)
  end

  test "should get index" do
    get pt_participations_url
    assert_response :success
  end

  test "should get new" do
    get new_pt_participation_url
    assert_response :success
  end

  test "should create pt_participation" do
    assert_difference('Pt::Participation.count') do
      post pt_participations_url, params: { pt_participation: { pt_event_id: @pt_participation.pt_event_id, pt_member_id: @pt_participation.pt_member_id } }
    end

    assert_redirected_to pt_participation_url(Pt::Participation.last)
  end

  test "should show pt_participation" do
    get pt_participation_url(@pt_participation)
    assert_response :success
  end

  test "should get edit" do
    get edit_pt_participation_url(@pt_participation)
    assert_response :success
  end

  test "should update pt_participation" do
    patch pt_participation_url(@pt_participation), params: { pt_participation: { pt_event_id: @pt_participation.pt_event_id, pt_member_id: @pt_participation.pt_member_id } }
    assert_redirected_to pt_participation_url(@pt_participation)
  end

  test "should destroy pt_participation" do
    assert_difference('Pt::Participation.count', -1) do
      delete pt_participation_url(@pt_participation)
    end

    assert_redirected_to pt_participations_url
  end
end
