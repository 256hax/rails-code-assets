require 'test_helper'

class Pt::TrainersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pt_trainer = pt_trainers(:one)
  end

  test "should get index" do
    get pt_trainers_url
    assert_response :success
  end

  test "should get new" do
    get new_pt_trainer_url
    assert_response :success
  end

  test "should create pt_trainer" do
    assert_difference('Pt::Trainer.count') do
      post pt_trainers_url, params: { pt_trainer: { area: @pt_trainer.area, birthdate: @pt_trainer.birthdate, comment: @pt_trainer.comment, email: @pt_trainer.email, name: @pt_trainer.name, sex: @pt_trainer.sex, title: @pt_trainer.title } }
    end

    assert_redirected_to pt_trainer_url(Pt::Trainer.last)
  end

  test "should show pt_trainer" do
    get pt_trainer_url(@pt_trainer)
    assert_response :success
  end

  test "should get edit" do
    get edit_pt_trainer_url(@pt_trainer)
    assert_response :success
  end

  test "should update pt_trainer" do
    patch pt_trainer_url(@pt_trainer), params: { pt_trainer: { area: @pt_trainer.area, birthdate: @pt_trainer.birthdate, comment: @pt_trainer.comment, email: @pt_trainer.email, name: @pt_trainer.name, sex: @pt_trainer.sex, title: @pt_trainer.title } }
    assert_redirected_to pt_trainer_url(@pt_trainer)
  end

  test "should destroy pt_trainer" do
    assert_difference('Pt::Trainer.count', -1) do
      delete pt_trainer_url(@pt_trainer)
    end

    assert_redirected_to pt_trainers_url
  end
end
