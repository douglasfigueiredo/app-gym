require "application_system_test_case"

class RotinasTest < ApplicationSystemTestCase
  setup do
    @rotina = rotinas(:one)
  end

  test "visiting the index" do
    visit rotinas_url
    assert_selector "h1", text: "Rotinas"
  end

  test "creating a Rotina" do
    visit rotinas_url
    click_on "New Rotina"

    fill_in "Nome", with: @rotina.nome
    fill_in "Quantidade dias", with: @rotina.quantidade_dias
    click_on "Create Rotina"

    assert_text "Rotina was successfully created"
    click_on "Back"
  end

  test "updating a Rotina" do
    visit rotinas_url
    click_on "Edit", match: :first

    fill_in "Nome", with: @rotina.nome
    fill_in "Quantidade dias", with: @rotina.quantidade_dias
    click_on "Update Rotina"

    assert_text "Rotina was successfully updated"
    click_on "Back"
  end

  test "destroying a Rotina" do
    visit rotinas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rotina was successfully destroyed"
  end
end
