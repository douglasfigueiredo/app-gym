require "test_helper"

class ExerciciosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @exercicio = exercicios(:one)
  end

  test "should get index" do
    get exercicios_url
    assert_response :success
  end

  test "should get new" do
    get new_exercicio_url
    assert_response :success
  end

  test "should create exercicio" do
    assert_difference('Exercicio.count') do
      post exercicios_url, params: { exercicio: { nome: @exercicio.nome, tipo_de_exercicio_id: @exercicio.tipo_de_exercicio_id, tutorial: @exercicio.tutorial } }
    end

    assert_redirected_to exercicio_url(Exercicio.last)
  end

  test "should show exercicio" do
    get exercicio_url(@exercicio)
    assert_response :success
  end

  test "should get edit" do
    get edit_exercicio_url(@exercicio)
    assert_response :success
  end

  test "should update exercicio" do
    patch exercicio_url(@exercicio), params: { exercicio: { nome: @exercicio.nome, tipo_de_exercicio_id: @exercicio.tipo_de_exercicio_id, tutorial: @exercicio.tutorial } }
    assert_redirected_to exercicio_url(@exercicio)
  end

  test "should destroy exercicio" do
    assert_difference('Exercicio.count', -1) do
      delete exercicio_url(@exercicio)
    end

    assert_redirected_to exercicios_url
  end
end
