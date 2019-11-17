class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  before_save :set_age

  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable
  enum bloodtype: [:'A-',:'A+',:'B-',:'B+',:'AB-',:'AB+',:'O-',:'O+']
  validates :email, uniqueness: true

  def set_age
    self.age = Time.now.year - self.birthdate.year
  end

end
