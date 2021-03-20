require "test_helper"

class TipoDeExerciciosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tipo_de_exercicio = tipo_de_exercicios(:one)
  end

  test "should get index" do
    get tipo_de_exercicios_url
    assert_response :success
  end

  test "should get new" do
    get new_tipo_de_exercicio_url
    assert_response :success
  end

  test "should create tipo_de_exercicio" do
    assert_difference('TipoDeExercicio.count') do
      post tipo_de_exercicios_url, params: { tipo_de_exercicio: { nome: @tipo_de_exercicio.nome } }
    end

    assert_redirected_to tipo_de_exercicio_url(TipoDeExercicio.last)
  end

  test "should show tipo_de_exercicio" do
    get tipo_de_exercicio_url(@tipo_de_exercicio)
    assert_response :success
  end

  test "should get edit" do
    get edit_tipo_de_exercicio_url(@tipo_de_exercicio)
    assert_response :success
  end

  test "should update tipo_de_exercicio" do
    patch tipo_de_exercicio_url(@tipo_de_exercicio), params: { tipo_de_exercicio: { nome: @tipo_de_exercicio.nome } }
    assert_redirected_to tipo_de_exercicio_url(@tipo_de_exercicio)
  end

  test "should destroy tipo_de_exercicio" do
    assert_difference('TipoDeExercicio.count', -1) do
      delete tipo_de_exercicio_url(@tipo_de_exercicio)
    end

    assert_redirected_to tipo_de_exercicios_url
  end
end
