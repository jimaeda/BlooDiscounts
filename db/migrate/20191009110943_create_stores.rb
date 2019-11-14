class CreateStores < ActiveRecord::Migration[6.0]
  def change
    create_table :stores do |t|
      t.string :name
      t.string :category
      t.string :address
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
