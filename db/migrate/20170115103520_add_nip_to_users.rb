class AddNipToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :nip, :string
  end
end
