require "test_helper"

class RotinasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rotina = rotinas(:one)
  end

  test "should get index" do
    get rotinas_url
    assert_response :success
  end

  test "should get new" do
    get new_rotina_url
    assert_response :success
  end

  test "should create rotina" do
    assert_difference('Rotina.count') do
      post rotinas_url, params: { rotina: { nome: @rotina.nome, quantidade_dias: @rotina.quantidade_dias } }
    end

    assert_redirected_to rotina_url(Rotina.last)
  end

  test "should show rotina" do
    get rotina_url(@rotina)
    assert_response :success
  end

  test "should get edit" do
    get edit_rotina_url(@rotina)
    assert_response :success
  end

  test "should update rotina" do
    patch rotina_url(@rotina), params: { rotina: { nome: @rotina.nome, quantidade_dias: @rotina.quantidade_dias } }
    assert_redirected_to rotina_url(@rotina)
  end

  test "should destroy rotina" do
    assert_difference('Rotina.count', -1) do
      delete rotina_url(@rotina)
    end

    assert_redirected_to rotinas_url
  end
end
