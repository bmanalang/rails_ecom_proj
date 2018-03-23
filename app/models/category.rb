class Category < ApplicationRecord
  has_many :cupcakes
  validates :name, presence: true
end
