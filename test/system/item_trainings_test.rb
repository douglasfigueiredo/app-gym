require "application_system_test_case"

class ItemTrainingsTest < ApplicationSystemTestCase
  setup do
    @item_training = item_trainings(:one)
  end

  test "visiting the index" do
    visit item_trainings_url
    assert_selector "h1", text: "Item Trainings"
  end

  test "creating a Item training" do
    visit item_trainings_url
    click_on "New Item Training"

    fill_in "Exercise", with: @item_training.exercise_id
    fill_in "Training", with: @item_training.training_id
    click_on "Create Item training"

    assert_text "Item training was successfully created"
    click_on "Back"
  end

  test "updating a Item training" do
    visit item_trainings_url
    click_on "Edit", match: :first

    fill_in "Exercise", with: @item_training.exercise_id
    fill_in "Training", with: @item_training.training_id
    click_on "Update Item training"

    assert_text "Item training was successfully updated"
    click_on "Back"
  end

  test "destroying a Item training" do
    visit item_trainings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Item training was successfully destroyed"
  end
end
