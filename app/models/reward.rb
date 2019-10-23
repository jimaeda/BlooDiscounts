class Reward < ApplicationRecord
	validates_presence_of :name, :message => " - Nome deve ser preenchido"
	validates_presence_of :category, :message => " - Categoria deve ser preenchido"
	validates_presence_of :quantity, :message => " - Quantidade deve ser preenchido"
	validates_presence_of :cost, :message => " - Valor deve ser preenchido"
end
