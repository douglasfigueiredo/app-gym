class RemoveSexoFromUser < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :sexo, :string
  end
end
