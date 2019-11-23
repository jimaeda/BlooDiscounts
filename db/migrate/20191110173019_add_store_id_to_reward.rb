class AddStoreIdToReward < ActiveRecord::Migration[6.0]
  def change
    add_column :rewards, :store_id, :integer
  end
end
