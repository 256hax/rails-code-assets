require 'test_helper'

class Inboxes::SpamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @inboxes_spam = inboxes_spams(:one)
  end

  test "should get index" do
    get inboxes_spams_url
    assert_response :success
  end

  test "should get new" do
    get new_inboxes_spam_url
    assert_response :success
  end

  test "should create inboxes_spam" do
    assert_difference('Inboxes::Spam.count') do
      post inboxes_spams_url, params: { inboxes_spam: { spam_flag: @inboxes_spam.spam_flag } }
    end

    assert_redirected_to inboxes_spam_url(Inboxes::Spam.last)
  end

  test "should show inboxes_spam" do
    get inboxes_spam_url(@inboxes_spam)
    assert_response :success
  end

  test "should get edit" do
    get edit_inboxes_spam_url(@inboxes_spam)
    assert_response :success
  end

  test "should update inboxes_spam" do
    patch inboxes_spam_url(@inboxes_spam), params: { inboxes_spam: { spam_flag: @inboxes_spam.spam_flag } }
    assert_redirected_to inboxes_spam_url(@inboxes_spam)
  end

  test "should destroy inboxes_spam" do
    assert_difference('Inboxes::Spam.count', -1) do
      delete inboxes_spam_url(@inboxes_spam)
    end

    assert_redirected_to inboxes_spams_url
  end
end
