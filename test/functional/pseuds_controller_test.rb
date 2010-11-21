require 'test_helper'

class PseudsControllerTest < ActionController::TestCase
  setup do
    @pseud = pseuds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pseuds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pseud" do
    assert_difference('Pseud.count') do
      post :create, :pseud => @pseud.attributes
    end

    assert_redirected_to pseud_path(assigns(:pseud))
  end

  test "should show pseud" do
    get :show, :id => @pseud.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @pseud.to_param
    assert_response :success
  end

  test "should update pseud" do
    put :update, :id => @pseud.to_param, :pseud => @pseud.attributes
    assert_redirected_to pseud_path(assigns(:pseud))
  end

  test "should destroy pseud" do
    assert_difference('Pseud.count', -1) do
      delete :destroy, :id => @pseud.to_param
    end

    assert_redirected_to pseuds_path
  end
end
