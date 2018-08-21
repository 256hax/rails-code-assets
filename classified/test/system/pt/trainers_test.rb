require "application_system_test_case"

class Pt::TrainersTest < ApplicationSystemTestCase
  setup do
    @pt_trainer = pt_trainers(:one)
  end

  test "visiting the index" do
    visit pt_trainers_url
    assert_selector "h1", text: "Pt/Trainers"
  end

  test "creating a Trainer" do
    visit pt_trainers_url
    click_on "New Pt/Trainer"

    fill_in "Area", with: @pt_trainer.area
    fill_in "Birthdate", with: @pt_trainer.birthdate
    fill_in "Comment", with: @pt_trainer.comment
    fill_in "Email", with: @pt_trainer.email
    fill_in "Name", with: @pt_trainer.name
    fill_in "Sex", with: @pt_trainer.sex
    fill_in "Title", with: @pt_trainer.title
    click_on "Create Trainer"

    assert_text "Trainer was successfully created"
    click_on "Back"
  end

  test "updating a Trainer" do
    visit pt_trainers_url
    click_on "Edit", match: :first

    fill_in "Area", with: @pt_trainer.area
    fill_in "Birthdate", with: @pt_trainer.birthdate
    fill_in "Comment", with: @pt_trainer.comment
    fill_in "Email", with: @pt_trainer.email
    fill_in "Name", with: @pt_trainer.name
    fill_in "Sex", with: @pt_trainer.sex
    fill_in "Title", with: @pt_trainer.title
    click_on "Update Trainer"

    assert_text "Trainer was successfully updated"
    click_on "Back"
  end

  test "destroying a Trainer" do
    visit pt_trainers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Trainer was successfully destroyed"
  end
end
