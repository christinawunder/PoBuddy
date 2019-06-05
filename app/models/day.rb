class Day < ApplicationRecord
  belongs_to :user
  has_many :advices
  has_many :links, through: :advices
end
