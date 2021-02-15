class DadosCadastroUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :nome, :string
    add_column :users, :idade, :string
    add_column :users, :sexo, :string
  end
end
