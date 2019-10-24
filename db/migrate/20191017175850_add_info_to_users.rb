class AddInfoToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :first_name, :varchar, null: false, default:""
    add_column :users, :last_name, :varchar, null: false, default:""
    add_column :users, :weight, :integer, null: false, default: 0
    add_column :users, :age, :integer, null: false, default: 0
    add_column :users, :height, :float, null: false, default: 0.0
    add_column :users, :city, :varchar, null: false, default: ""
    add_column :users, :state, :varchar, null: false, default: ""
    add_column :users, :country, :varchar, null: false, default: ""
    add_column :users, :points, :integer, null: false, default: 0
  end
end
