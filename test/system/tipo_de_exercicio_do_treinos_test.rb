require "application_system_test_case"

class TipoDeExercicioDoTreinosTest < ApplicationSystemTestCase
  setup do
    @tipo_de_exercicio_do_treino = tipo_de_exercicio_do_treinos(:one)
  end

  test "visiting the index" do
    visit tipo_de_exercicio_do_treinos_url
    assert_selector "h1", text: "Tipo De Exercicio Do Treinos"
  end

  test "creating a Tipo de exercicio do treino" do
    visit tipo_de_exercicio_do_treinos_url
    click_on "New Tipo De Exercicio Do Treino"

    fill_in "Rotina de treino", with: @tipo_de_exercicio_do_treino.rotina_de_treino_id
    fill_in "Tipo de exercicio", with: @tipo_de_exercicio_do_treino.tipo_de_exercicio_id
    click_on "Create Tipo de exercicio do treino"

    assert_text "Tipo de exercicio do treino was successfully created"
    click_on "Back"
  end

  test "updating a Tipo de exercicio do treino" do
    visit tipo_de_exercicio_do_treinos_url
    click_on "Edit", match: :first

    fill_in "Rotina de treino", with: @tipo_de_exercicio_do_treino.rotina_de_treino_id
    fill_in "Tipo de exercicio", with: @tipo_de_exercicio_do_treino.tipo_de_exercicio_id
    click_on "Update Tipo de exercicio do treino"

    assert_text "Tipo de exercicio do treino was successfully updated"
    click_on "Back"
  end

  test "destroying a Tipo de exercicio do treino" do
    visit tipo_de_exercicio_do_treinos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tipo de exercicio do treino was successfully destroyed"
  end
end
