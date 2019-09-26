class CreateHospitals < ActiveRecord::Migration[6.0]
  def change
    create_table :hospitals do |t|
      t.string :name,              null: false, default: ""
      t.string :city,              null: false, default: ""
      t.string :state,              null: false, default: ""
      t.decimal :'a+'
      t.decimal :'a-'
      t.decimal :'b+'
      t.decimal :'b-'
      t.decimal :'o+'
      t.decimal :'o-'
      t.decimal :'ab+'
      t.decimal :'ab-'

      t.timestamps  null: false
    end

    add_index :hospitals, :name,                unique: true

  end
end
