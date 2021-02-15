require "test_helper"

class ItemTrainingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @item_training = item_trainings(:one)
  end

  test "should get index" do
    get item_trainings_url
    assert_response :success
  end

  test "should get new" do
    get new_item_training_url
    assert_response :success
  end

  test "should create item_training" do
    assert_difference('ItemTraining.count') do
      post item_trainings_url, params: { item_training: { exercise_id: @item_training.exercise_id, training_id: @item_training.training_id } }
    end

    assert_redirected_to item_training_url(ItemTraining.last)
  end

  test "should show item_training" do
    get item_training_url(@item_training)
    assert_response :success
  end

  test "should get edit" do
    get edit_item_training_url(@item_training)
    assert_response :success
  end

  test "should update item_training" do
    patch item_training_url(@item_training), params: { item_training: { exercise_id: @item_training.exercise_id, training_id: @item_training.training_id } }
    assert_redirected_to item_training_url(@item_training)
  end

  test "should destroy item_training" do
    assert_difference('ItemTraining.count', -1) do
      delete item_training_url(@item_training)
    end

    assert_redirected_to item_trainings_url
  end
end
