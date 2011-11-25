require 'test_helper'

class InstructionsControllerTest < ActionController::TestCase
  setup do
    @instruction = instructions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:instructions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create instruction" do
    assert_difference('Instruction.count') do
      post :create, instruction: @instruction.attributes
    end

    assert_redirected_to instruction_path(assigns(:instruction))
  end

  test "should show instruction" do
    get :show, id: @instruction.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @instruction.to_param
    assert_response :success
  end

  test "should update instruction" do
    put :update, id: @instruction.to_param, instruction: @instruction.attributes
    assert_redirected_to instruction_path(assigns(:instruction))
  end

  test "should destroy instruction" do
    assert_difference('Instruction.count', -1) do
      delete :destroy, id: @instruction.to_param
    end

    assert_redirected_to instructions_path
  end
end
