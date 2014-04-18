require 'test_helper'

class NumbersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get random" do
    get :random
    assert_response :success
  end

  test "should get guess" do
    get :guess
    assert_response :success
  end

  test "should get result" do
    get :result
    assert_response :success
  end

end
