require 'test_helper'

class Pt::MembersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pt_member = pt_members(:one)
  end

  test "should get index" do
    get pt_members_url
    assert_response :success
  end

  test "should get new" do
    get new_pt_member_url
    assert_response :success
  end

  test "should create pt_member" do
    assert_difference('Pt::Member.count') do
      post pt_members_url, params: { pt_member: { area: @pt_member.area, birthdate: @pt_member.birthdate, comment: @pt_member.comment, email: @pt_member.email, name: @pt_member.name, sex: @pt_member.sex, title: @pt_member.title } }
    end

    assert_redirected_to pt_member_url(Pt::Member.last)
  end

  test "should show pt_member" do
    get pt_member_url(@pt_member)
    assert_response :success
  end

  test "should get edit" do
    get edit_pt_member_url(@pt_member)
    assert_response :success
  end

  test "should update pt_member" do
    patch pt_member_url(@pt_member), params: { pt_member: { area: @pt_member.area, birthdate: @pt_member.birthdate, comment: @pt_member.comment, email: @pt_member.email, name: @pt_member.name, sex: @pt_member.sex, title: @pt_member.title } }
    assert_redirected_to pt_member_url(@pt_member)
  end

  test "should destroy pt_member" do
    assert_difference('Pt::Member.count', -1) do
      delete pt_member_url(@pt_member)
    end

    assert_redirected_to pt_members_url
  end
end
