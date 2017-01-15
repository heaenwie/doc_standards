class AddPeselToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :pesel, :string
  end
end
