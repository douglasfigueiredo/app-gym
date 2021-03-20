require "application_system_test_case"

class ExercicioRepeticaosTest < ApplicationSystemTestCase
  setup do
    @exercicio_repeticao = exercicio_repeticaos(:one)
  end

  test "visiting the index" do
    visit exercicio_repeticaos_url
    assert_selector "h1", text: "Exercicio Repeticaos"
  end

  test "creating a Exercicio repeticao" do
    visit exercicio_repeticaos_url
    click_on "New Exercicio Repeticao"

    fill_in "Genero", with: @exercicio_repeticao.genero
    fill_in "Max", with: @exercicio_repeticao.max
    fill_in "Min", with: @exercicio_repeticao.min
    fill_in "Nome", with: @exercicio_repeticao.nome
    click_on "Create Exercicio repeticao"

    assert_text "Exercicio repeticao was successfully created"
    click_on "Back"
  end

  test "updating a Exercicio repeticao" do
    visit exercicio_repeticaos_url
    click_on "Edit", match: :first

    fill_in "Genero", with: @exercicio_repeticao.genero
    fill_in "Max", with: @exercicio_repeticao.max
    fill_in "Min", with: @exercicio_repeticao.min
    fill_in "Nome", with: @exercicio_repeticao.nome
    click_on "Update Exercicio repeticao"

    assert_text "Exercicio repeticao was successfully updated"
    click_on "Back"
  end

  test "destroying a Exercicio repeticao" do
    visit exercicio_repeticaos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Exercicio repeticao was successfully destroyed"
  end
end
