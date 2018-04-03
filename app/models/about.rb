class About < ApplicationRecord
  validates :description, :telephone, presence: true
end
