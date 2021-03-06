require "application_system_test_case"

class Pt::EventsTest < ApplicationSystemTestCase
  setup do
    @pt_event = pt_events(:one)
  end

  test "visiting the index" do
    visit pt_events_url
    assert_selector "h1", text: "Pt/Events"
  end

  test "creating a Event" do
    visit pt_events_url
    click_on "New Pt/Event"

    fill_in "Area", with: @pt_event.area
    fill_in "Comment", with: @pt_event.comment
    fill_in "Image", with: @pt_event.image
    fill_in "Name", with: @pt_event.name
    fill_in "Pt Trainer", with: @pt_event.pt_trainer_id
    fill_in "The Date", with: @pt_event.the_date
    fill_in "Title", with: @pt_event.title
    click_on "Create Event"

    assert_text "Event was successfully created"
    click_on "Back"
  end

  test "updating a Event" do
    visit pt_events_url
    click_on "Edit", match: :first

    fill_in "Area", with: @pt_event.area
    fill_in "Comment", with: @pt_event.comment
    fill_in "Image", with: @pt_event.image
    fill_in "Name", with: @pt_event.name
    fill_in "Pt Trainer", with: @pt_event.pt_trainer_id
    fill_in "The Date", with: @pt_event.the_date
    fill_in "Title", with: @pt_event.title
    click_on "Update Event"

    assert_text "Event was successfully updated"
    click_on "Back"
  end

  test "destroying a Event" do
    visit pt_events_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Event was successfully destroyed"
  end
end
