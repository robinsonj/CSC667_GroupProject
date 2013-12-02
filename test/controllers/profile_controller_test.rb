require 'test_helper'

class ProfileControllerTest < ActionController::TestCase
  test "should get createprofile" do
    get :createprofile
    assert_response :success
  end

  test "should get editprofile" do
    get :editprofile
    assert_response :success
  end

  test "should get viewprofile" do
    get :viewprofile
    assert_response :success
  end

end
