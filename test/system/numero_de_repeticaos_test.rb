require "application_system_test_case"

class NumeroDeRepeticaosTest < ApplicationSystemTestCase
  setup do
    @numero_de_repeticao = numero_de_repeticaos(:one)
  end

  test "visiting the index" do
    visit numero_de_repeticaos_url
    assert_selector "h1", text: "Numero De Repeticaos"
  end

  test "creating a Numero de repeticao" do
    visit numero_de_repeticaos_url
    click_on "New Numero De Repeticao"

    fill_in "Genero", with: @numero_de_repeticao.genero
    fill_in "Max", with: @numero_de_repeticao.max
    fill_in "Min", with: @numero_de_repeticao.min
    fill_in "Titulo", with: @numero_de_repeticao.titulo
    click_on "Create Numero de repeticao"

    assert_text "Numero de repeticao was successfully created"
    click_on "Back"
  end

  test "updating a Numero de repeticao" do
    visit numero_de_repeticaos_url
    click_on "Edit", match: :first

    fill_in "Genero", with: @numero_de_repeticao.genero
    fill_in "Max", with: @numero_de_repeticao.max
    fill_in "Min", with: @numero_de_repeticao.min
    fill_in "Titulo", with: @numero_de_repeticao.titulo
    click_on "Update Numero de repeticao"

    assert_text "Numero de repeticao was successfully updated"
    click_on "Back"
  end

  test "destroying a Numero de repeticao" do
    visit numero_de_repeticaos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Numero de repeticao was successfully destroyed"
  end
end
