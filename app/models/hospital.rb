class Hospital < ApplicationRecord
	validates :hosp_name, presence: true, format: { with: /\A[a-zA-Z]+\z/, 
	message: "only allow letters" }, :length => {:minimum => 6 }
	validates :hosp_city, presence: true, format: { with: /\A[a-zA-Z]+\z/, 
	message: "only allow letters" }
	validates :hosp_state, presence: true, format: { with: /\A[a-zA-Z]+\z/, 
	message: "only allow letters" }
	validates :a_plus, presence: true, numericality: true
	validates :a_minus, presence: true, numericality: true
	validates :b_minus, presence: true, numericality: true
	validates :b_plus, presence: true, numericality: true
	validates :o_minus, presence: true, numericality: true
	validates :o_plus, presence: true, numericality: true
	validates :ab_minus, presence: true, numericality: true
	validates :ab_plus, presence: true, numericality: true
	validates :lattitude, numericality: true
	validates :longitude, numericality: true
end
