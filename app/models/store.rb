class Store < ApplicationRecord
	has_many :rewards
	accepts_nested_attributes_for :rewards, :allow_destroy => true

	validates_presence_of :name, :message => " - Deve ser preenchido"
	validates_presence_of :phone, :message => " - Deve ser preenchido"
	validates_presence_of :address, :message => " - Deve ser preenchido"
end
