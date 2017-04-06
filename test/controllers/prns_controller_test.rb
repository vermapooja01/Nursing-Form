require 'test_helper'

class PrnsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @prn = prns(:one)
  end

  test "should get index" do
    get prns_url
    assert_response :success
  end

  test "should get new" do
    get new_prn_url
    assert_response :success
  end

  test "should create prn" do
    assert_difference('Prn.count') do
      post prns_url, params: { prn: { date_ordered: @prn.date_ordered, medication: @prn.medication, ordering_md: @prn.ordering_md } }
    end

    assert_redirected_to prn_url(Prn.last)
  end

  test "should show prn" do
    get prn_url(@prn)
    assert_response :success
  end

  test "should get edit" do
    get edit_prn_url(@prn)
    assert_response :success
  end

  test "should update prn" do
    patch prn_url(@prn), params: { prn: { date_ordered: @prn.date_ordered, medication: @prn.medication, ordering_md: @prn.ordering_md } }
    assert_redirected_to prn_url(@prn)
  end

  test "should destroy prn" do
    assert_difference('Prn.count', -1) do
      delete prn_url(@prn)
    end

    assert_redirected_to prns_url
  end
end
