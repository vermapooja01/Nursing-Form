require 'test_helper'

class SubmissionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @submission = submissions(:one)
  end

  test "should get index" do
    get submissions_url
    assert_response :success
  end

  test "should get new" do
    get new_submission_url
    assert_response :success
  end

  test "should create submission" do
    assert_difference('Submission.count') do
      post submissions_url, params: { submission: { admitting_primary_medical_diagnosis: @submission.admitting_primary_medical_diagnosis, age: @submission.age, gender: @submission.gender, patient_initials: @submission.patient_initials, user_id: @submission.user_id, week: @submission.week } }
    end

    assert_redirected_to submission_url(Submission.last)
  end

  test "should show submission" do
    get submission_url(@submission)
    assert_response :success
  end

  test "should get edit" do
    get edit_submission_url(@submission)
    assert_response :success
  end

  test "should update submission" do
    patch submission_url(@submission), params: { submission: { admitting_primary_medical_diagnosis: @submission.admitting_primary_medical_diagnosis, age: @submission.age, gender: @submission.gender, patient_initials: @submission.patient_initials, user_id: @submission.user_id, week: @submission.week } }
    assert_redirected_to submission_url(@submission)
  end

  test "should destroy submission" do
    assert_difference('Submission.count', -1) do
      delete submission_url(@submission)
    end

    assert_redirected_to submissions_url
  end
end
