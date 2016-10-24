class User < ApplicationRecord
  belongs_to :roles
  has_many :posts
end
