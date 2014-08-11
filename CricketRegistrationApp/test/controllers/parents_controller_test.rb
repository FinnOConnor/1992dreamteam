require 'test_helper'

class ParentsControllerTest < ActionController::TestCase
  setup do
    @parent = parents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:parents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create parent" do
    assert_difference('Parent.count') do
      post :create, parent: { coach_id: @parent.coach_id, p_address: @parent.p_address, p_email: @parent.p_email, p_first_name: @parent.p_first_name, p_gender: @parent.p_gender, p_home_phone: @parent.p_home_phone, p_mobile_phone: @parent.p_mobile_phone, p_surname: @parent.p_surname, s_address: @parent.s_address, s_email: @parent.s_email, s_first_name: @parent.s_first_name, s_gender: @parent.s_gender, s_home_phone: @parent.s_home_phone, s_mobile_phone: @parent.s_mobile_phone, s_surname: @parent.s_surname }
    end

    assert_redirected_to parent_path(assigns(:parent))
  end

  test "should show parent" do
    get :show, id: @parent
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @parent
    assert_response :success
  end

  test "should update parent" do
    patch :update, id: @parent, parent: { coach_id: @parent.coach_id, p_address: @parent.p_address, p_email: @parent.p_email, p_first_name: @parent.p_first_name, p_gender: @parent.p_gender, p_home_phone: @parent.p_home_phone, p_mobile_phone: @parent.p_mobile_phone, p_surname: @parent.p_surname, s_address: @parent.s_address, s_email: @parent.s_email, s_first_name: @parent.s_first_name, s_gender: @parent.s_gender, s_home_phone: @parent.s_home_phone, s_mobile_phone: @parent.s_mobile_phone, s_surname: @parent.s_surname }
    assert_redirected_to parent_path(assigns(:parent))
  end

  test "should destroy parent" do
    assert_difference('Parent.count', -1) do
      delete :destroy, id: @parent
    end

    assert_redirected_to parents_path
  end
end
