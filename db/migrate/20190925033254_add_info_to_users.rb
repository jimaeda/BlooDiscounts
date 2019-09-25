class AddInfoToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :blood_type, :string
    add_column :users, :city, :string
    add_column :users, :state, :string

    add_column :users, :date_of_birth, :date

    add_column :users, :weight, :integer, default: 0
    add_column :users, :height, :integer, default: 0
  end
end
