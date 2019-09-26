class CreateDonations < ActiveRecord::Migration[6.0]
  def change
    create_table :donations do |t|
      t.string :user_cpf,              null: false, default: ""
      t.string :hospital_name,              null: false, default: ""
      t.decimal :donated_amount
      t.datetime :donation_date

      t.timestamps	null: false
    end
  end
end
