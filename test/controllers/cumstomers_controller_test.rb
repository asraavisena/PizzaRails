require 'test_helper'

class CumstomersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cumstomer = cumstomers(:one)
  end

  test "should get index" do
    get cumstomers_url
    assert_response :success
  end

  test "should get new" do
    get new_cumstomer_url
    assert_response :success
  end

  test "should create cumstomer" do
    assert_difference('Cumstomer.count') do
      post cumstomers_url, params: { cumstomer: { customerID: @cumstomer.customerID, name: @cumstomer.name, surename: @cumstomer.surename } }
    end

    assert_redirected_to cumstomer_url(Cumstomer.last)
  end

  test "should show cumstomer" do
    get cumstomer_url(@cumstomer)
    assert_response :success
  end

  test "should get edit" do
    get edit_cumstomer_url(@cumstomer)
    assert_response :success
  end

  test "should update cumstomer" do
    patch cumstomer_url(@cumstomer), params: { cumstomer: { customerID: @cumstomer.customerID, name: @cumstomer.name, surename: @cumstomer.surename } }
    assert_redirected_to cumstomer_url(@cumstomer)
  end

  test "should destroy cumstomer" do
    assert_difference('Cumstomer.count', -1) do
      delete cumstomer_url(@cumstomer)
    end

    assert_redirected_to cumstomers_url
  end
end
