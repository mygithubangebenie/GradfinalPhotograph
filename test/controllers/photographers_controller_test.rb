require 'test_helper'

class PhotographersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @photographer = photographers(:one)
  end

  test "should get index" do
    get photographers_url
    assert_response :success
  end

  test "should get new" do
    get new_photographer_url
    assert_response :success
  end

  test "should create photographer" do
    assert_difference('Photographer.count') do
      post photographers_url, params: { photographer: { address: @photographer.address, contact: @photographer.contact, description: @photographer.description, email: @photographer.email, image: @photographer.image, name: @photographer.name, upload_date: @photographer.upload_date, video: @photographer.video } }
    end

    assert_redirected_to photographer_url(Photographer.last)
  end

  test "should show photographer" do
    get photographer_url(@photographer)
    assert_response :success
  end

  test "should get edit" do
    get edit_photographer_url(@photographer)
    assert_response :success
  end

  test "should update photographer" do
    patch photographer_url(@photographer), params: { photographer: { address: @photographer.address, contact: @photographer.contact, description: @photographer.description, email: @photographer.email, image: @photographer.image, name: @photographer.name, upload_date: @photographer.upload_date, video: @photographer.video } }
    assert_redirected_to photographer_url(@photographer)
  end

  test "should destroy photographer" do
    assert_difference('Photographer.count', -1) do
      delete photographer_url(@photographer)
    end

    assert_redirected_to photographers_url
  end
end
