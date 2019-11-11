class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  before_save :set_age

  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable
  enum bloodtype: [:'A-',:'A+',:'B-',:'B+',:'AB-',:'AB+',:'O-',:'O+']

  validates :email, uniqueness: true
  validates :weight, :numericality => {greater_than: 0}, presence: true
  validates :height, :numericality => {greater_than: 0}, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :country, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :birthdate, presence: true

  def set_age
    self.age = (Time.now.year - self.birthdate.year) + (Time.now.month >
      self.birthdate.month || Time.now.month == self.birthdate.month &&
      Time.now.day > self.birthdate.day ? 0 : -1)
  end

end
