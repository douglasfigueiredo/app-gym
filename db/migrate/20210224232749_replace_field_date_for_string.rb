class ReplaceFieldDateForString < ActiveRecord::Migration[6.1]
  def up
    change_column :profiles, :birthday, :string
  end

  def down
      change_column :profiles, :birthday, :datetime
  end
end
