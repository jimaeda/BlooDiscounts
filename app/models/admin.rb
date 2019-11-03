class Admin < ApplicationRecord
  has_secure_password
  validates :adm_username, presence: true
  validates :password, presence: true, length: { minimum: 6 }
end
