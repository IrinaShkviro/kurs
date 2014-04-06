require 'test_helper'

class GroupsControllerTest < ActionController::TestCase
  test "should get homework" do
    get :homework
    assert_response :success
  end

end
