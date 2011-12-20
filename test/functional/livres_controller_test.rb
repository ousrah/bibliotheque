require 'test_helper'

class LivresControllerTest < ActionController::TestCase
  setup do
    @livre = livres(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:livres)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create livre" do
    assert_difference('Livre.count') do
      post :create, livre: @livre.attributes
    end

    assert_redirected_to livre_path(assigns(:livre))
  end

  test "should show livre" do
    get :show, id: @livre.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @livre.to_param
    assert_response :success
  end

  test "should update livre" do
    put :update, id: @livre.to_param, livre: @livre.attributes
    assert_redirected_to livre_path(assigns(:livre))
  end

  test "should destroy livre" do
    assert_difference('Livre.count', -1) do
      delete :destroy, id: @livre.to_param
    end

    assert_redirected_to livres_path
  end
end
