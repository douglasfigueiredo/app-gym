require "application_system_test_case"

class MyTrainingsTest < ApplicationSystemTestCase
  setup do
    @my_training = my_trainings(:one)
  end

  test "visiting the index" do
    visit my_trainings_url
    assert_selector "h1", text: "My Trainings"
  end

  test "creating a My training" do
    visit my_trainings_url
    click_on "New My Training"

    fill_in "Quantity", with: @my_training.quantity
    fill_in "Status", with: @my_training.status
    fill_in "Trainings", with: @my_training.trainings_id
    fill_in "Users", with: @my_training.users_id
    click_on "Create My training"

    assert_text "My training was successfully created"
    click_on "Back"
  end

  test "updating a My training" do
    visit my_trainings_url
    click_on "Edit", match: :first

    fill_in "Quantity", with: @my_training.quantity
    fill_in "Status", with: @my_training.status
    fill_in "Trainings", with: @my_training.trainings_id
    fill_in "Users", with: @my_training.users_id
    click_on "Update My training"

    assert_text "My training was successfully updated"
    click_on "Back"
  end

  test "destroying a My training" do
    visit my_trainings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "My training was successfully destroyed"
  end
end
