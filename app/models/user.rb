class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :registerable,
         :recoverable,
         :rememberable,
         :jwt_authenticatable,
         jwt_revocation_strategy: JwtDenylist

  validates :first_name, length: { maximum: 20 }
  validates :last_name, length: { maximum: 20 }

  has_many :properties
end
