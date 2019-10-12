class AddBirthDateBloodTypeToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :bloodtype, :integer
    add_column :users, :birthdate, :date
  end
end
