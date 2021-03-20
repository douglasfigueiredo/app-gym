require "application_system_test_case"

class TipoDeExerciciosTest < ApplicationSystemTestCase
  setup do
    @tipo_de_exercicio = tipo_de_exercicios(:one)
  end

  test "visiting the index" do
    visit tipo_de_exercicios_url
    assert_selector "h1", text: "Tipo De Exercicios"
  end

  test "creating a Tipo de exercicio" do
    visit tipo_de_exercicios_url
    click_on "New Tipo De Exercicio"

    fill_in "Nome", with: @tipo_de_exercicio.nome
    click_on "Create Tipo de exercicio"

    assert_text "Tipo de exercicio was successfully created"
    click_on "Back"
  end

  test "updating a Tipo de exercicio" do
    visit tipo_de_exercicios_url
    click_on "Edit", match: :first

    fill_in "Nome", with: @tipo_de_exercicio.nome
    click_on "Update Tipo de exercicio"

    assert_text "Tipo de exercicio was successfully updated"
    click_on "Back"
  end

  test "destroying a Tipo de exercicio" do
    visit tipo_de_exercicios_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tipo de exercicio was successfully destroyed"
  end
end
