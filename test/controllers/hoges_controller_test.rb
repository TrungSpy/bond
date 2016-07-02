require 'test_helper'

class HogesControllerTest < ActionController::TestCase
  setup do
    @hoge = hoges(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hoges)
  end

  test "should create hoge" do
    assert_difference('Hoge.count') do
      post :create, hoge: { body: @hoge.body }
    end

    assert_response 201
  end

  test "should show hoge" do
    get :show, id: @hoge
    assert_response :success
  end

  test "should update hoge" do
    put :update, id: @hoge, hoge: { body: @hoge.body }
    assert_response 204
  end

  test "should destroy hoge" do
    assert_difference('Hoge.count', -1) do
      delete :destroy, id: @hoge
    end

    assert_response 204
  end
end
