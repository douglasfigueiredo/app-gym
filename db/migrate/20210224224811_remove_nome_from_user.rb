class RemoveNomeFromUser < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :nome, :string
  end
end
