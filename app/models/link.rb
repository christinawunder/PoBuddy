class Link < ApplicationRecord
  has_many :advices
  belongs_to :day, through: :advice
end
