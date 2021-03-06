class Reward < ApplicationRecord
	belongs_to :store

	validates_presence_of :name, :message => " - Nome deve ser preenchido"
	validates_presence_of :category, :message => " - Categoria deve ser preenchido"
	validates_presence_of :quantity, :message => " - Quantidade deve ser preenchido"
	validates_presence_of :cost, :message => " - Valor deve ser preenchido"
	validates :quantity, numericality: { greater_than: 0 }
	validates :cost, numericality: { greater_than: 0 }
end