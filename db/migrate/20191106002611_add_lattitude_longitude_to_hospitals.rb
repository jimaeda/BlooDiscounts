class AddLattitudeLongitudeToHospitals < ActiveRecord::Migration[6.0]
  def change
    add_column :hospitals, :lattitude, :float
    add_column :hospitals, :longitude, :float
  end
end
