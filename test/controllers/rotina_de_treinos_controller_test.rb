require "test_helper"

class RotinaDeTreinosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rotina_de_treino = rotina_de_treinos(:one)
  end

  test "should get index" do
    get rotina_de_treinos_url
    assert_response :success
  end

  test "should get new" do
    get new_rotina_de_treino_url
    assert_response :success
  end

  test "should create rotina_de_treino" do
    assert_difference('RotinaDeTreino.count') do
      post rotina_de_treinos_url, params: { rotina_de_treino: { rotina_id: @rotina_de_treino.rotina_id, treino_id: @rotina_de_treino.treino_id } }
    end

    assert_redirected_to rotina_de_treino_url(RotinaDeTreino.last)
  end

  test "should show rotina_de_treino" do
    get rotina_de_treino_url(@rotina_de_treino)
    assert_response :success
  end

  test "should get edit" do
    get edit_rotina_de_treino_url(@rotina_de_treino)
    assert_response :success
  end

  test "should update rotina_de_treino" do
    patch rotina_de_treino_url(@rotina_de_treino), params: { rotina_de_treino: { rotina_id: @rotina_de_treino.rotina_id, treino_id: @rotina_de_treino.treino_id } }
    assert_redirected_to rotina_de_treino_url(@rotina_de_treino)
  end

  test "should destroy rotina_de_treino" do
    assert_difference('RotinaDeTreino.count', -1) do
      delete rotina_de_treino_url(@rotina_de_treino)
    end

    assert_redirected_to rotina_de_treinos_url
  end
end
