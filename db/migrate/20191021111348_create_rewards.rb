class CreateRewards < ActiveRecord::Migration[6.0]
  def change
    create_table :rewards do |t|
      t.string :name
      t.string :category
      t.integer :quantity
      t.integer :cost

      t.timestamps
    end
  end
end
