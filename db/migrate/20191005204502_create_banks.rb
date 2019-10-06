class CreateBanks < ActiveRecord::Migration[6.0]
  def change
    create_table :banks do |t|
      t.string :name
      t.string :address
      t.string :adm      

      t.timestamps
    end
  end
end
