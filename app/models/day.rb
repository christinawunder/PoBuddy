class Day < ApplicationRecord
  belongs_to :user
  has_many :advices
  has_many :links, through: :advices

  def pain?
    head_pain || abdominal_pain || breast_pain
  end
end
