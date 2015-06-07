require 'test_helper'

class EnginesControllerTest < ActionController::TestCase
  setup do
    @engine = engines(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:engines)
  end

  test "should create engine" do
    assert_difference('Engine.count') do
      post :create, engine: { description: @engine.description, name: @engine.name, price: @engine.price }
    end

    assert_response 201
  end

  test "should show engine" do
    get :show, id: @engine
    assert_response :success
  end

  test "should update engine" do
    put :update, id: @engine, engine: { description: @engine.description, name: @engine.name, price: @engine.price }
    assert_response 204
  end

  test "should destroy engine" do
    assert_difference('Engine.count', -1) do
      delete :destroy, id: @engine
    end

    assert_response 204
  end
end
