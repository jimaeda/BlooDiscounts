class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable
  enum bloodtype: [:'A-',:'A+',:'B-',:'B+',:'AB-',:'AB+',:'O-',:'O+']
end
