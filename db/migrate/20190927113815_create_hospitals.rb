class CreateHospitals < ActiveRecord::Migration[6.0]
  def change
    create_table :hospitals do |t|
      t.string :hosp_name,              null: false, default: ""
      t.string :hosp_city,              null: false, default: ""
      t.string :hosp_state,              null: false, default: ""
      t.decimal :a_plus
      t.decimal :a_minus
      t.decimal :b_plus
      t.decimal :b_minus
      t.decimal :o_plus
      t.decimal :o_minus
      t.decimal :ab_plus
      t.decimal :ab_minus

      t.timestamps		null: false
    end

    add_index :hospitals, :hosp_name,                unique: true

  end
end
