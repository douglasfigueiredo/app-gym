require "test_helper"

class ExercicioRepeticaosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @exercicio_repeticao = exercicio_repeticaos(:one)
  end

  test "should get index" do
    get exercicio_repeticaos_url
    assert_response :success
  end

  test "should get new" do
    get new_exercicio_repeticao_url
    assert_response :success
  end

  test "should create exercicio_repeticao" do
    assert_difference('ExercicioRepeticao.count') do
      post exercicio_repeticaos_url, params: { exercicio_repeticao: { genero: @exercicio_repeticao.genero, max: @exercicio_repeticao.max, min: @exercicio_repeticao.min, nome: @exercicio_repeticao.nome } }
    end

    assert_redirected_to exercicio_repeticao_url(ExercicioRepeticao.last)
  end

  test "should show exercicio_repeticao" do
    get exercicio_repeticao_url(@exercicio_repeticao)
    assert_response :success
  end

  test "should get edit" do
    get edit_exercicio_repeticao_url(@exercicio_repeticao)
    assert_response :success
  end

  test "should update exercicio_repeticao" do
    patch exercicio_repeticao_url(@exercicio_repeticao), params: { exercicio_repeticao: { genero: @exercicio_repeticao.genero, max: @exercicio_repeticao.max, min: @exercicio_repeticao.min, nome: @exercicio_repeticao.nome } }
    assert_redirected_to exercicio_repeticao_url(@exercicio_repeticao)
  end

  test "should destroy exercicio_repeticao" do
    assert_difference('ExercicioRepeticao.count', -1) do
      delete exercicio_repeticao_url(@exercicio_repeticao)
    end

    assert_redirected_to exercicio_repeticaos_url
  end
end
