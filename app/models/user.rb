class User < ApplicationRecord
  has_secure_password
  has_many :projects, dependent: :destroy

  validates :email, format: { with: /[a-zA-Z0-9.-]+@[a-zA-Z-]+\.\w+/, message: "not Valid format, ex: 'test@gmail.com'" }
end
