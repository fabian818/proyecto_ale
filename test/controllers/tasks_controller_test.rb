require 'test_helper'

class TasksControllerTest < ActionController::TestCase
  test "should get asign_notes" do
    get :asign_notes
    assert_response :success
  end

  test "should get create" do
    get :create
    assert_response :success
  end

end
