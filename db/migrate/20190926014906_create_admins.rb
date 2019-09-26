class CreateAdmins < ActiveRecord::Migration[6.0]
  def change
    create_table :admins do |t|
      t.string :username,              null: false, default: ""
      t.string :encrypted_password,              null: false, default: ""
      t.string :name,              null: false, default: ""
      t.string :cpf,              null: false, default: ""
      t.string :hospital_name,              null: false, default: ""
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at
      t.datetime :remember_created_at

      t.timestamps  null: false
    end

    add_index :admins, :cpf,                unique: true
    add_index :admins, :username,                unique: true
    add_index :admins, :reset_password_token, unique: true

  end
end
