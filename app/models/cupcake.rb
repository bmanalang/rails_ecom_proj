class Cupcake < ApplicationRecord
  belongs_to :category

  mount_uploader :image, ImageUploader

  validates :name, :price, presence: true
end
