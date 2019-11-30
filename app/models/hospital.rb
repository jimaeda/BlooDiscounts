class Hospital < ApplicationRecord
	has_many :admins
	accepts_nested_attributes_for :admins, :allow_destroy => true
	validates :hosp_name, presence: true, :length => {:minimum => 6 }
	validates :hosp_city, presence: true
	validates :hosp_state, presence: true
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
