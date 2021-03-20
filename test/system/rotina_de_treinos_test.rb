require "application_system_test_case"

class RotinaDeTreinosTest < ApplicationSystemTestCase
  setup do
    @rotina_de_treino = rotina_de_treinos(:one)
  end

  test "visiting the index" do
    visit rotina_de_treinos_url
    assert_selector "h1", text: "Rotina De Treinos"
  end

  test "creating a Rotina de treino" do
    visit rotina_de_treinos_url
    click_on "New Rotina De Treino"

    fill_in "Rotina", with: @rotina_de_treino.rotina_id
    fill_in "Treino", with: @rotina_de_treino.treino_id
    click_on "Create Rotina de treino"

    assert_text "Rotina de treino was successfully created"
    click_on "Back"
  end

  test "updating a Rotina de treino" do
    visit rotina_de_treinos_url
    click_on "Edit", match: :first

    fill_in "Rotina", with: @rotina_de_treino.rotina_id
    fill_in "Treino", with: @rotina_de_treino.treino_id
    click_on "Update Rotina de treino"

    assert_text "Rotina de treino was successfully updated"
    click_on "Back"
  end

  test "destroying a Rotina de treino" do
    visit rotina_de_treinos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rotina de treino was successfully destroyed"
  end
end
