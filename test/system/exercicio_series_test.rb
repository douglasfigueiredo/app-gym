require "application_system_test_case"

class ExercicioSeriesTest < ApplicationSystemTestCase
  setup do
    @exercicio_series = exercicio_series(:one)
  end

  test "visiting the index" do
    visit exercicio_series_url
    assert_selector "h1", text: "Exercicio Series"
  end

  test "creating a Exercicio series" do
    visit exercicio_series_url
    click_on "New Exercicio Series"

    fill_in "Nome", with: @exercicio_series.nome
    fill_in "Quantidade", with: @exercicio_series.quantidade
    click_on "Create Exercicio series"

    assert_text "Exercicio series was successfully created"
    click_on "Back"
  end

  test "updating a Exercicio series" do
    visit exercicio_series_url
    click_on "Edit", match: :first

    fill_in "Nome", with: @exercicio_series.nome
    fill_in "Quantidade", with: @exercicio_series.quantidade
    click_on "Update Exercicio series"

    assert_text "Exercicio series was successfully updated"
    click_on "Back"
  end

  test "destroying a Exercicio series" do
    visit exercicio_series_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Exercicio series was successfully destroyed"
  end
end
