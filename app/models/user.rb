class User < ApplicationRecord
  validates :name, :email, :password, presence: true, uniqueness: true
end
