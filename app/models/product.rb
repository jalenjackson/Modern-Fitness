class Product < ApplicationRecord
  has_many :galleries
  belongs_to :user
end
