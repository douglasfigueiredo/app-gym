class AdicionarNumeroDeSeriesEmTiposDeExercicios < ActiveRecord::Migration[6.1]
  def change
    add_column :tipo_de_exercicios, :numero_de_series, :integer
  end
end
