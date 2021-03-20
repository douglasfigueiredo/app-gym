require "test_helper"

class TipoDeExercicioDoTreinosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tipo_de_exercicio_do_treino = tipo_de_exercicio_do_treinos(:one)
  end

  test "should get index" do
    get tipo_de_exercicio_do_treinos_url
    assert_response :success
  end

  test "should get new" do
    get new_tipo_de_exercicio_do_treino_url
    assert_response :success
  end

  test "should create tipo_de_exercicio_do_treino" do
    assert_difference('TipoDeExercicioDoTreino.count') do
      post tipo_de_exercicio_do_treinos_url, params: { tipo_de_exercicio_do_treino: { rotina_de_treino_id: @tipo_de_exercicio_do_treino.rotina_de_treino_id, tipo_de_exercicio_id: @tipo_de_exercicio_do_treino.tipo_de_exercicio_id } }
    end

    assert_redirected_to tipo_de_exercicio_do_treino_url(TipoDeExercicioDoTreino.last)
  end

  test "should show tipo_de_exercicio_do_treino" do
    get tipo_de_exercicio_do_treino_url(@tipo_de_exercicio_do_treino)
    assert_response :success
  end

  test "should get edit" do
    get edit_tipo_de_exercicio_do_treino_url(@tipo_de_exercicio_do_treino)
    assert_response :success
  end

  test "should update tipo_de_exercicio_do_treino" do
    patch tipo_de_exercicio_do_treino_url(@tipo_de_exercicio_do_treino), params: { tipo_de_exercicio_do_treino: { rotina_de_treino_id: @tipo_de_exercicio_do_treino.rotina_de_treino_id, tipo_de_exercicio_id: @tipo_de_exercicio_do_treino.tipo_de_exercicio_id } }
    assert_redirected_to tipo_de_exercicio_do_treino_url(@tipo_de_exercicio_do_treino)
  end

  test "should destroy tipo_de_exercicio_do_treino" do
    assert_difference('TipoDeExercicioDoTreino.count', -1) do
      delete tipo_de_exercicio_do_treino_url(@tipo_de_exercicio_do_treino)
    end

    assert_redirected_to tipo_de_exercicio_do_treinos_url
  end
end
