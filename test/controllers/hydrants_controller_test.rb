require 'test_helper'

class HydrantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hydrant = hydrants(:one)
  end

  test "should get index" do
    get hydrants_url
    assert_response :success
  end

  test "should get new" do
    get new_hydrant_url
    assert_response :success
  end

  test "should create hydrant" do
    assert_difference('Hydrant.count') do
      post hydrants_url, params: { hydrant: { dog_id: @hydrant.dog_id, image: @hydrant.image } }
    end

    assert_redirected_to hydrant_url(Hydrant.last)
  end

  test "should show hydrant" do
    get hydrant_url(@hydrant)
    assert_response :success
  end

  test "should get edit" do
    get edit_hydrant_url(@hydrant)
    assert_response :success
  end

  test "should update hydrant" do
    patch hydrant_url(@hydrant), params: { hydrant: { dog_id: @hydrant.dog_id, image: @hydrant.image } }
    assert_redirected_to hydrant_url(@hydrant)
  end

  test "should destroy hydrant" do
    assert_difference('Hydrant.count', -1) do
      delete hydrant_url(@hydrant)
    end

    assert_redirected_to hydrants_url
  end
end
