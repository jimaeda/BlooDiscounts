class CreateAdmins < ActiveRecord::Migration[6.0]
  def change
    create_table :admins do |t|
      t.string :adm_username,      null: false, default: ""
      t.string :password,          null: false, default: ""
      t.string :adm_name,          null: false, default: ""
      t.string :adm_cpf,           null: false, default: ""
      t.string :hospital_name,     null: false, default: ""

      t.timestamps
    end
  end
end
