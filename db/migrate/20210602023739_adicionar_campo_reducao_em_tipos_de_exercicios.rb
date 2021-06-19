class AdicionarCampoReducaoEmTiposDeExercicios < ActiveRecord::Migration[6.1]
  def change
    add_column :tipo_de_exercicios, :reducao, :string
  end
end
