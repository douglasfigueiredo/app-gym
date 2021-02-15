require "application_system_test_case"

class ItemExercisesTest < ApplicationSystemTestCase
  setup do
    @item_exercise = item_exercises(:one)
  end

  test "visiting the index" do
    visit item_exercises_url
    assert_selector "h1", text: "Item Exercises"
  end

  test "creating a Item exercise" do
    visit item_exercises_url
    click_on "New Item Exercise"

    fill_in "Exercise", with: @item_exercise.exercise_id
    fill_in "Guide", with: @item_exercise.guide
    fill_in "Name", with: @item_exercise.name
    click_on "Create Item exercise"

    assert_text "Item exercise was successfully created"
    click_on "Back"
  end

  test "updating a Item exercise" do
    visit item_exercises_url
    click_on "Edit", match: :first

    fill_in "Exercise", with: @item_exercise.exercise_id
    fill_in "Guide", with: @item_exercise.guide
    fill_in "Name", with: @item_exercise.name
    click_on "Update Item exercise"

    assert_text "Item exercise was successfully updated"
    click_on "Back"
  end

  test "destroying a Item exercise" do
    visit item_exercises_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Item exercise was successfully destroyed"
  end
end
