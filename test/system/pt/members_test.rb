require "application_system_test_case"

class Pt::MembersTest < ApplicationSystemTestCase
  setup do
    @pt_member = pt_members(:one)
  end

  test "visiting the index" do
    visit pt_members_url
    assert_selector "h1", text: "Pt/Members"
  end

  test "creating a Member" do
    visit pt_members_url
    click_on "New Pt/Member"

    fill_in "Area", with: @pt_member.area
    fill_in "Birthdate", with: @pt_member.birthdate
    fill_in "Comment", with: @pt_member.comment
    fill_in "Email", with: @pt_member.email
    fill_in "Name", with: @pt_member.name
    fill_in "Sex", with: @pt_member.sex
    fill_in "Title", with: @pt_member.title
    click_on "Create Member"

    assert_text "Member was successfully created"
    click_on "Back"
  end

  test "updating a Member" do
    visit pt_members_url
    click_on "Edit", match: :first

    fill_in "Area", with: @pt_member.area
    fill_in "Birthdate", with: @pt_member.birthdate
    fill_in "Comment", with: @pt_member.comment
    fill_in "Email", with: @pt_member.email
    fill_in "Name", with: @pt_member.name
    fill_in "Sex", with: @pt_member.sex
    fill_in "Title", with: @pt_member.title
    click_on "Update Member"

    assert_text "Member was successfully updated"
    click_on "Back"
  end

  test "destroying a Member" do
    visit pt_members_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Member was successfully destroyed"
  end
end
