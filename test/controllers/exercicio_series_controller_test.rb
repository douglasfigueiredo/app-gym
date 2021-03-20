require "test_helper"

class ExercicioSeriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @exercicio_series = exercicio_series(:one)
  end

  test "should get index" do
    get exercicio_series_index_url
    assert_response :success
  end

  test "should get new" do
    get new_exercicio_series_url
    assert_response :success
  end

  test "should create exercicio_series" do
    assert_difference('ExercicioSeries.count') do
      post exercicio_series_index_url, params: { exercicio_series: { nome: @exercicio_series.nome, quantidade: @exercicio_series.quantidade } }
    end

    assert_redirected_to exercicio_series_url(ExercicioSeries.last)
  end

  test "should show exercicio_series" do
    get exercicio_series_url(@exercicio_series)
    assert_response :success
  end

  test "should get edit" do
    get edit_exercicio_series_url(@exercicio_series)
    assert_response :success
  end

  test "should update exercicio_series" do
    patch exercicio_series_url(@exercicio_series), params: { exercicio_series: { nome: @exercicio_series.nome, quantidade: @exercicio_series.quantidade } }
    assert_redirected_to exercicio_series_url(@exercicio_series)
  end

  test "should destroy exercicio_series" do
    assert_difference('ExercicioSeries.count', -1) do
      delete exercicio_series_url(@exercicio_series)
    end

    assert_redirected_to exercicio_series_index_url
  end
end
