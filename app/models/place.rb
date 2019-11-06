class Place < ApplicationRecord
  =begin
  def full_address
    [pais, cidade, rua].compact.join(‘,’)
  end
  geocoded_by :full_address
  after_validation :geocode, if: ->(obj){
    obj.address.present? and obj.address_changed?
  }
  =end
end
