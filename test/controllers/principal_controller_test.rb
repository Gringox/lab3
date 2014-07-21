require 'test_helper'

class PrincipalControllerTest < ActionController::TestCase
  test "should get ver_usuarios" do
    get :ver_usuarios
    assert_response :success
  end

end
