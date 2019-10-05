class CreateHospitals < ActiveRecord::Migration[6.0]
  def change
    create_table :hospitals do |t|
      t.string :hosp_name,           null: false, default: ""
      t.string :hosp_city,           null: false, default: ""
      t.string :hosp_state,          null: false, default: ""
      t.decimal :a_plus,     null: false, default: 0
      t.decimal :a_minus,     null: false, default: 0
      t.decimal :b_plus,     null: false, default: 0
      t.decimal :b_minus,     null: false, default: 0
      t.decimal :o_plus,     null: false, default: 0
      t.decimal :o_minus,     null: false, default: 0
      t.decimal :ab_plus,     null: false, default: 0
      t.decimal :ab_minus,     null: false, default: 0

      t.timestamps
    end
  end
end
