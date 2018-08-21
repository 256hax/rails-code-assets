require "application_system_test_case"

class Pt::ParticipationsTest < ApplicationSystemTestCase
  setup do
    @pt_participation = pt_participations(:one)
  end

  test "visiting the index" do
    visit pt_participations_url
    assert_selector "h1", text: "Pt/Participations"
  end

  test "creating a Participation" do
    visit pt_participations_url
    click_on "New Pt/Participation"

    fill_in "Pt Event", with: @pt_participation.pt_event_id
    fill_in "Pt Member", with: @pt_participation.pt_member_id
    click_on "Create Participation"

    assert_text "Participation was successfully created"
    click_on "Back"
  end

  test "updating a Participation" do
    visit pt_participations_url
    click_on "Edit", match: :first

    fill_in "Pt Event", with: @pt_participation.pt_event_id
    fill_in "Pt Member", with: @pt_participation.pt_member_id
    click_on "Update Participation"

    assert_text "Participation was successfully updated"
    click_on "Back"
  end

  test "destroying a Participation" do
    visit pt_participations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Participation was successfully destroyed"
  end
end
