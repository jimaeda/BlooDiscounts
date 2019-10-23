class Store < ApplicationRecord
	validates_presence_of :name, :message => " - Deve ser preenchido"
	validates_presence_of :phone, :message => " - Deve ser preenchido"
	validates_presence_of :address, :message => " - Deve ser preenchido"
end
