require "application_system_test_case"

class Inboxes::SpamsTest < ApplicationSystemTestCase
  setup do
    @inboxes_spam = inboxes_spams(:one)
  end

  test "visiting the index" do
    visit inboxes_spams_url
    assert_selector "h1", text: "Inboxes/Spams"
  end

  test "creating a Spam" do
    visit inboxes_spams_url
    click_on "New Inboxes/Spam"

    fill_in "Spam Flag", with: @inboxes_spam.spam_flag
    click_on "Create Spam"

    assert_text "Spam was successfully created"
    click_on "Back"
  end

  test "updating a Spam" do
    visit inboxes_spams_url
    click_on "Edit", match: :first

    fill_in "Spam Flag", with: @inboxes_spam.spam_flag
    click_on "Update Spam"

    assert_text "Spam was successfully updated"
    click_on "Back"
  end

  test "destroying a Spam" do
    visit inboxes_spams_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Spam was successfully destroyed"
  end
end
