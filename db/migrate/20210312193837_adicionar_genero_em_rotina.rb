class AdicionarGeneroEmRotina < ActiveRecord::Migration[6.1]
  def change
    add_column :rotinas, :genero, :string
  end
end
