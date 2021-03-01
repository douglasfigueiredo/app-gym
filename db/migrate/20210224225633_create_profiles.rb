class CreateProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.datetime :birthday
      t.string :genre

      t.timestamps
    end
  end
end
