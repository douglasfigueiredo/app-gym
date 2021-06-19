require "test_helper"

class NumeroDeRepeticaosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @numero_de_repeticao = numero_de_repeticaos(:one)
  end

  test "should get index" do
    get numero_de_repeticaos_url
    assert_response :success
  end

  test "should get new" do
    get new_numero_de_repeticao_url
    assert_response :success
  end

  test "should create numero_de_repeticao" do
    assert_difference('NumeroDeRepeticao.count') do
      post numero_de_repeticaos_url, params: { numero_de_repeticao: { genero: @numero_de_repeticao.genero, max: @numero_de_repeticao.max, min: @numero_de_repeticao.min, titulo: @numero_de_repeticao.titulo } }
    end

    assert_redirected_to numero_de_repeticao_url(NumeroDeRepeticao.last)
  end

  test "should show numero_de_repeticao" do
    get numero_de_repeticao_url(@numero_de_repeticao)
    assert_response :success
  end

  test "should get edit" do
    get edit_numero_de_repeticao_url(@numero_de_repeticao)
    assert_response :success
  end

  test "should update numero_de_repeticao" do
    patch numero_de_repeticao_url(@numero_de_repeticao), params: { numero_de_repeticao: { genero: @numero_de_repeticao.genero, max: @numero_de_repeticao.max, min: @numero_de_repeticao.min, titulo: @numero_de_repeticao.titulo } }
    assert_redirected_to numero_de_repeticao_url(@numero_de_repeticao)
  end

  test "should destroy numero_de_repeticao" do
    assert_difference('NumeroDeRepeticao.count', -1) do
      delete numero_de_repeticao_url(@numero_de_repeticao)
    end

    assert_redirected_to numero_de_repeticaos_url
  end
end
