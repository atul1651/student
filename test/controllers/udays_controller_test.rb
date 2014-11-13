require 'test_helper'

class UdaysControllerTest < ActionController::TestCase
  setup do
    @uday = udays(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:udays)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create uday" do
    assert_difference('Uday.count') do
      post :create, uday: { name: @uday.name, rno: @uday.rno }
    end

    assert_redirected_to uday_path(assigns(:uday))
  end

  test "should show uday" do
    get :show, id: @uday
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @uday
    assert_response :success
  end

  test "should update uday" do
    patch :update, id: @uday, uday: { name: @uday.name, rno: @uday.rno }
    assert_redirected_to uday_path(assigns(:uday))
  end

  test "should destroy uday" do
    assert_difference('Uday.count', -1) do
      delete :destroy, id: @uday
    end

    assert_redirected_to udays_path
  end
end
