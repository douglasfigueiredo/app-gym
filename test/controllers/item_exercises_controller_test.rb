require "test_helper"

class ItemExercisesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @item_exercise = item_exercises(:one)
  end

  test "should get index" do
    get item_exercises_url
    assert_response :success
  end

  test "should get new" do
    get new_item_exercise_url
    assert_response :success
  end

  test "should create item_exercise" do
    assert_difference('ItemExercise.count') do
      post item_exercises_url, params: { item_exercise: { exercise_id: @item_exercise.exercise_id, guide: @item_exercise.guide, name: @item_exercise.name } }
    end

    assert_redirected_to item_exercise_url(ItemExercise.last)
  end

  test "should show item_exercise" do
    get item_exercise_url(@item_exercise)
    assert_response :success
  end

  test "should get edit" do
    get edit_item_exercise_url(@item_exercise)
    assert_response :success
  end

  test "should update item_exercise" do
    patch item_exercise_url(@item_exercise), params: { item_exercise: { exercise_id: @item_exercise.exercise_id, guide: @item_exercise.guide, name: @item_exercise.name } }
    assert_redirected_to item_exercise_url(@item_exercise)
  end

  test "should destroy item_exercise" do
    assert_difference('ItemExercise.count', -1) do
      delete item_exercise_url(@item_exercise)
    end

    assert_redirected_to item_exercises_url
  end
end
