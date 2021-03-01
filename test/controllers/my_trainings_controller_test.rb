require "test_helper"

class MyTrainingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @my_training = my_trainings(:one)
  end

  test "should get index" do
    get my_trainings_url
    assert_response :success
  end

  test "should get new" do
    get new_my_training_url
    assert_response :success
  end

  test "should create my_training" do
    assert_difference('MyTraining.count') do
      post my_trainings_url, params: { my_training: { quantity: @my_training.quantity, status: @my_training.status, trainings_id: @my_training.trainings_id, users_id: @my_training.users_id } }
    end

    assert_redirected_to my_training_url(MyTraining.last)
  end

  test "should show my_training" do
    get my_training_url(@my_training)
    assert_response :success
  end

  test "should get edit" do
    get edit_my_training_url(@my_training)
    assert_response :success
  end

  test "should update my_training" do
    patch my_training_url(@my_training), params: { my_training: { quantity: @my_training.quantity, status: @my_training.status, trainings_id: @my_training.trainings_id, users_id: @my_training.users_id } }
    assert_redirected_to my_training_url(@my_training)
  end

  test "should destroy my_training" do
    assert_difference('MyTraining.count', -1) do
      delete my_training_url(@my_training)
    end

    assert_redirected_to my_trainings_url
  end
end
